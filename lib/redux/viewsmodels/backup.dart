import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/features/shared/widgets/snackbars.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/user_actions.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:vegan_liverpool/utils/constants.dart';
import 'package:vegan_liverpool/utils/log/log.dart';

import '../../common/router/routes.gr.dart';

class BackupViewModel extends Equatable {
  const BackupViewModel({
    required this.backupWallet,
    required this.userMnemonic,
  });

  factory BackupViewModel.fromStore(Store<AppState> store) {
    return BackupViewModel(
      userMnemonic: store.state.userState.mnemonic,
      backupWallet: () {
        store.dispatch(
          BackupSuccess(),
        );
      },
    );
  }

  final void Function() backupWallet;
  final List<String> userMnemonic;

  @override
  List<Object?> get props => [userMnemonic];
}

class LockScreenViewModel extends Equatable {
  const LockScreenViewModel({
    required this.pincode,
    required this.loginAgain,
  });

  factory LockScreenViewModel.fromStore(Store<AppState> store) {
    return LockScreenViewModel(
      pincode: store.state.userState.pincode,
      loginAgain: (BuildContext context) {
        store.dispatch(reLoginCall(
          onSuccess: () {
            showInfoSnack(
              context,
              title: Messages.walletLoadedSnackbarMessage,
            );
          },
          reOnboardRequired: () {
            if (DebugHelpers.inDebugMode) {
              log.verbose('Reauthentication of user requires reonboarding');
            }
            rootRouter.push(const SignUpScreen());
          },
          onFailure: (Exception e) {
            if (DebugHelpers.inDebugMode) {
              return showErrorSnack(
                context: context,
                title: Messages.walletSignedOutSnackbarMessage,
                message: e.toString(),
              );
            }
            showInfoSnack(
              context,
              title: Messages.walletSignedOutSnackbarMessage,
            );
          },
          onError: (error) {
            if (inDebugMode) {
              showErrorSnack(
                context: context,
                title: Messages.walletSignedOutSnackbarMessage,
                message: 'Error fetching smart wallet: $error',
              );
            } else {
              showInfoSnack(
                context,
                title: Messages.walletSignedOutSnackbarMessage,
              );
            }
          },
        ));
      },
    );
  }

  final String pincode;
  final void Function(BuildContext context) loginAgain;
  
  @override
  List<Object?> get props => [pincode];
}
