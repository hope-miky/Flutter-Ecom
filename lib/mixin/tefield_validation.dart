// import 'package:flutter/material.dart';

mixin InputValidationMixin {
  requiredval(String text, String placeholder) {
    if (text.length >= 1) {
      return null;
    } else {
      return "$placeholder is required";
    }
  }

  dateValidation(String? date, String placeholder) {
    String pattern =
        r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$";

    RegExp regex = new RegExp(pattern);
    if (regex.hasMatch(date ?? ""))
      return null;
    else
      return "Invalid Date Format";
  }

  /// Email validation for text field
  emailValidation(String? email, String _) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (regex.hasMatch(email ?? ""))
      return null;
    else
      return "Email is not correct";
  }

  /// Password validation for text field
  passwordValidation(String? password, String _) {
    String pattern1 = r".{8,}";
    String pattern2 = r"^(?=.*[A-Za-z])(?=.*\d)";
    RegExp regex = new RegExp(pattern1);
    RegExp regex2 = new RegExp(pattern2);
    if (!regex.hasMatch(password ?? ""))
      return "Password must be greater than 8 characters";
    else if (!regex2.hasMatch(password ?? ""))
      return "Password must include at least one character and one number";
    else
      return null;
  }
}
