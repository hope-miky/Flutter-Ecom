import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sizer/sizer.dart';

class SocialMediaLoginIcons extends StatelessWidget {
  const SocialMediaLoginIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.w,
          margin: EdgeInsets.symmetric(
            horizontal: 10.0.w,
            vertical: 0.2.h,
          ),
          child: SignInButton(
            Buttons.Google,
            text: "Sign in with Google",
            onPressed: () {},
          ),
        ),
        Container(
          width: 100.w,
          margin: EdgeInsets.symmetric(
            horizontal: 10.0.w,
            vertical: 0.2.h,
          ),
          child: SignInButton(
            Buttons.Facebook,
            text: "Sign in with Facebook",
            onPressed: () {},
          ),
        ),
        Container(
          width: 100.w,
          margin: EdgeInsets.symmetric(
            horizontal: 10.0.w,
            vertical: 0.2.h,
          ),
          child: SignInButton(
            Buttons.LinkedIn,
            text: "Sign in with LinkedIn",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
