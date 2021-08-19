// import 'package:flutter/material.dart';

mixin InputValidationMixin {
  bool requiredval(String text) => text.length >= 2;

  /// Email validation for text field
  emailValidation(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (regex.hasMatch(email))
      return null;
    else
      return "Email is not correct";
  }

  /// Password validation for text field
  passwordValidation(String password) {
    String pattern1 = r".{8,}";
    String pattern2 = r"^(?=.*[A-Za-z])(?=.*\d)";
    RegExp regex = new RegExp(pattern1);
    RegExp regex2 = new RegExp(pattern2);
    if (!regex.hasMatch(password))
      return "Password must be greater than 8 characters";
    else if (!regex2.hasMatch(password))
      return "Password must include at least one character and one number";
    else
      return null;
  }
}
