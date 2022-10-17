import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/generated/l10n.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/viewsmodels/backup.dart';

class PinCodeScreen extends StatefulWidget {
  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  final pincodeController = TextEditingController(text: "");
  String currentText = "";
  late Flushbar flush;
  final formKey = GlobalKey<FormState>();
  // StreamController<ErrorAnimationType> errorController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: screenGradient,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width * .9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/Vegi-Logo-horizontal.png',
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          I10n.of(context).enter_pincode,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        StoreConnector<AppState, LockScreenViewModel>(
                          converter: LockScreenViewModel.fromStore,
                          builder: (_, viewModel) => Form(
                            key: formKey,
                            child: Container(
                              width: 250,
                              child: PinCodeTextField(
                                backgroundColor: Colors.transparent,
                                length: 6,
                                showCursor: false,
                                autoFocus: true,
                                appContext: context,
                                enableActiveFill: true,
                                obscureText: true,
                                enablePinAutofill: false,
                                keyboardType: TextInputType.numberWithOptions(
                                  signed: false,
                                  decimal: false,
                                ),
                                animationType: AnimationType.fade,
                                controller: pincodeController,
                                // errorAnimationController: errorController,
                                validator: (String? value) =>
                                    value!.length != 6 &&
                                            value == viewModel.pincode
                                        ? I10n.of(context).invalid_pincode
                                        : null,
                                textStyle: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                pinTheme: PinTheme(
                                  borderRadius: BorderRadius.circular(5),
                                  borderWidth: 4,
                                  fieldWidth: 35,
                                  shape: PinCodeFieldShape.underline,
                                  inactiveColor: Colors.black,
                                  selectedColor: Colors.black,
                                  activeColor: Colors.black,
                                  inactiveFillColor: Colors.transparent,
                                  selectedFillColor: Colors.transparent,
                                  disabledColor: Colors.transparent,
                                  activeFillColor: Colors.transparent,
                                ),
                                onCompleted: (value) {
                                  if (viewModel.pincode == value) {
                                    context.router.replaceAll([MainScreen()]);
                                    pincodeController.clear();
                                  } else {
                                    flush = Flushbar<bool>(
                                      title: I10n.of(context).invalid_pincode,
                                      message:
                                          I10n.of(context).auth_failed_message,
                                      icon: Icon(
                                        Icons.info_outline,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      mainButton: TextButton(
                                        onPressed: () async {
                                          flush.dismiss(true);
                                        },
                                        child: Text(
                                          I10n.of(context).try_again,
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                        ),
                                      ),
                                    )..show(context).then(
                                        (result) async {
                                          if (result == true) {
                                            pincodeController.clear();
                                            WidgetsBinding.instance.focusManager
                                                .primaryFocus
                                                ?.previousFocus();
                                          }
                                        },
                                      );
                                  }
                                },
                                onChanged: (value) {
                                  setState(() {
                                    currentText = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
