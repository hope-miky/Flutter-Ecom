import 'package:addisecom/components/logo_text.dart';
import 'package:addisecom/components/signinbutton.dart';
import 'package:addisecom/components/socialmedialogin.dart';
import 'package:addisecom/components/textfield.dart';
import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/mixin/tefield_validation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with InputValidationMixin {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SizedBox.expand(
          child: Container(
            margin: SizerUtil.deviceType == DeviceType.web
                ? EdgeInsets.symmetric(
                    horizontal: SizerUtil.width > 700 ? 60.w : 10.w)
                : null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 2.h),
                  child: LogoText(),
                ),
                CustomTextFiled(
                  placeholder: "Email",
                  validator: emailValidation,
                ),
                CustomTextFiled(
                  placeholder: "Password",
                  inputtype: CustomInputTypes.password,
                  validator: passwordValidation,
                ),
                Container(
                  width: 100.w,
                  margin: EdgeInsets.only(
                    top: SizerUtil.deviceType == DeviceType.mobile ? 2.h : 2,
                    bottom: 4.h,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // if (_formkey.currentState!.validate()) {
                      // if (SizerUtil.deviceType == DeviceType.mobile)
                      //   AutoRouter.of(context)
                      //       .pushNamed("/main-dashboard-mobile");
                      // else
                      Navigator.of(context).pushNamed("/dashboard/main");
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: maincolor,
                      padding: SizerUtil.deviceType == DeviceType.web
                          ? EdgeInsets.symmetric(vertical: 17)
                          : null,
                    ),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SocialMediaLoginIcons(),
                CustomSignInButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
