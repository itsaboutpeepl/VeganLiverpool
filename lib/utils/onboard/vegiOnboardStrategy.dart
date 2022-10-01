import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_segment/flutter_segment.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/models/admin/user.dart' as VegiUser;
import 'package:vegan_liverpool/redux/actions/user_actions.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:vegan_liverpool/utils/log/log.dart';
import 'package:vegan_liverpool/utils/onboard/Istrategy.dart';

class VegiOnboardStrategy implements IOnBoardStrategy {
  @override
  final strategy;
  VegiOnboardStrategy({this.strategy = OnboardStrategy.vegi});

  @override
  Future login(
    store,
    phoneNumber,
    VoidCallback onSuccess,
    Function(dynamic error) onError,
  ) async {
    void verificationCompleted(
      PhoneAuthCredential credentials,
    ) async {
      store.dispatch(SetCredentials(credentials));
      UserCredential userCredential = await firebaseAuth.signInWithCredential(
        credentials,
      );
      final User? user = userCredential.user;
      final User currentUser = firebaseAuth.currentUser!;
      assert(user?.uid == currentUser.uid);
      final String accountAddress = store.state.userState.accountAddress;
      final String identifier = store.state.userState.identifier;
      String token = await user!.getIdToken();
      try {
        String jwtToken = await walletApi.loginWithFirebase(
          token,
          accountAddress,
          identifier,
          appName: "vegiliverpool",
        );
        Segment.track(
          eventName: 'Sign up: VerificationCode_NextBtn_Press_walletApi',
        );
        log.info('jwtToken $jwtToken');

        VegiUser.User? vegiUser = await peeplEatsService.signIn(
            phoneNumber: phoneNumber, firebaseSessionToken: token);

        Segment.track(
          eventName: 'Sign up: VerificationCode_NextBtn_Press_vegiService',
        );
        log.info('user.id ${vegiUser?.id}');

        onSuccess();
        store.dispatch(LoginVerifySuccess(jwtToken));
        walletApi.setJwtToken(jwtToken);
        rootRouter.push(UserNameScreen());
      } catch (e) {
        onError(e.toString());
      }
    }

    void verificationFailed(FirebaseAuthException authException) async {
      log.info(
          'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
      onError(authException.message);
    }

    void codeSent(
      String verificationId, [
      int? forceResendingToken,
    ]) {
      log.info("PhoneCodeSent verificationId: $verificationId");
      store.dispatch(SetCredentials(null));
      store.dispatch(SetVerificationId(verificationId));
      rootRouter.push(VerifyPhoneNumber(verificationId: verificationId));
      onSuccess();
    }
    // https://firebase.google.com/docs/auth/flutter/phone-auth
    //NOTE: FirebaseAuth not available on emulators. https://firebase.google.com/docs/auth/flutter/phone-auth#testing
    await firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      codeAutoRetrievalTimeout: (String verificationId) {},
      codeSent: codeSent,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
    );
  }

  @override
  Future verify(
    store,
    verificationCode,
    onSuccess,
  ) async {
    PhoneAuthCredential? credential = store.state.userState.credentials;
    final String verificationId = store.state.userState.verificationId;
    credential ??= PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: verificationCode,
    );
    UserCredential userCredential = await firebaseAuth.signInWithCredential(
      credential,
    );
    final User? currentUser = firebaseAuth.currentUser;
    assert(userCredential.user?.uid == currentUser?.uid);
    final String accountAddress = store.state.userState.accountAddress;
    final String identifier = store.state.userState.identifier;
    String token = await userCredential.user!.getIdToken();
    final String jwtToken = await walletApi.loginWithFirebase(
      token,
      accountAddress,
      identifier,
      appName: "vegiliverpool",
    );
    onSuccess(jwtToken);
  }
}
