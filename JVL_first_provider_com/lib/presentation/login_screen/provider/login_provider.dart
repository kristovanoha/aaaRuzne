import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/login_screen/models/login_model.dart';

/// A provider class for the LoginScreen.
///
/// This provider manages the state of the LoginScreen, including the
/// current loginModelObj

// ignore_for_file: must_be_immutable
class LoginProvider extends ChangeNotifier {
  TextEditingController oscisloController = TextEditingController();

  TextEditingController heslovalueController = TextEditingController();

  LoginModel loginModelObj = LoginModel();

  @override
  void dispose() {
    super.dispose();
    oscisloController.dispose();
    heslovalueController.dispose();
  }
}
