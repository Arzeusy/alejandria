import 'package:flutter/material.dart';

class LoginPageModel {
  TextEditingController? userNameField;
  String? Function(BuildContext, String?)? userNameFieldValidator;

  TextEditingController? passwordField;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordFieldValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    userNameField?.dispose();
    passwordField?.dispose();
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password should be at least 6 characters long';
    }
    return null;
  }

  Map<String, dynamic> toJson() => {
        'user': userNameField?.text,
        'password': passwordField?.text,
      };
}
