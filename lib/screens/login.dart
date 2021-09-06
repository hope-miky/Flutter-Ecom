import 'package:addisecom/components/logo_text.dart';
import 'package:addisecom/components/textfield.dart';
import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/mixin/tefield_validation.dart';
// import 'package:addisecom/routes/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
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
        child: Container(
          height: 100.h,
          width: 100.w,
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
                  left: 10.0.w,
                  right: 10.0.w,
                  top: 2.h,
                  bottom: 4.h,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      // TODO: implement login navigation
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: maincolor,
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100.w,
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0.w,
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
                ),
                child: SignInButton(
                  Buttons.LinkedIn,
                  text: "Sign in with LinkedIn",
                  onPressed: () {},
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an acount?",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: maincolor, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
