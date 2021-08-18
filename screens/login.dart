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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 2.h),
                child: RichText(
                  text: TextSpan(
                    text: "Addis",
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Ecom",
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: maincolor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CustomTextFiled(
                placeholder: "Email",
                validator: emailValidation,
              ),
              CustomTextFiled(
                placeholder: "Password",
                obscure: true,
                validator: emailValidation,
              ),
              Container(
                width: 100.w,
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0.w,
                  vertical: 2.h,
                ),
                child: ElevatedButton(
                  onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
