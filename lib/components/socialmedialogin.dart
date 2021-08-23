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
            vertical: SizerUtil.deviceType == DeviceType.mobile ? 0.2.h : 0.5.h,
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
            vertical: SizerUtil.deviceType == DeviceType.mobile ? 0.2.h : 0.5.h,
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
            vertical: SizerUtil.deviceType == DeviceType.mobile ? 0.2.h : 0.5.h,
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
