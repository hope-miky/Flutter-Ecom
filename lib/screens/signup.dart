import 'package:addisecom/components/logo_text.dart';
import 'package:addisecom/components/textfield.dart';
import 'package:addisecom/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:addisecom/mixin/tefield_validation.dart';
import 'package:sizer/sizer.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> with InputValidationMixin {
  var _formkey = GlobalKey<FormState>();
  TextEditingController _firstnamecontroller = new TextEditingController();
  TextEditingController _lastnamecontroller = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _phonenumbercontroller = new TextEditingController();
  TextEditingController _contrycodecontroller = new TextEditingController();
  TextEditingController _addressline1controller = new TextEditingController();
  TextEditingController _addressline2controller = new TextEditingController();
  TextEditingController _bdatecontroller = new TextEditingController();
  TextEditingController _countrycontroller = new TextEditingController();
  TextEditingController _citycontroller = new TextEditingController();
  // TextEditingController _addressline2controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2.h),
                    child: LogoText(),
                  ),
                  CustomTextFiled(
                    placeholder: "First Name",
                    validator: requiredval,
                    controller: _firstnamecontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "Last Name",
                    validator: requiredval,
                    controller: _lastnamecontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "Email",
                    validator: emailValidation,
                    controller: _emailcontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "Birth date",
                    validator: requiredval,
                    inputtype: CustomInputTypes.date,
                    controller: _bdatecontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "Phone Number",
                    validator: requiredval,
                    inputtype: CustomInputTypes.phone,
                    controller: _phonenumbercontroller,
                    contrycodecontroller: _contrycodecontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "Country",
                    validator: requiredval,
                    inputtype: CustomInputTypes.country,
                    controller: _countrycontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "City",
                    validator: requiredval,
                    controller: _citycontroller,
                  ),
                  CustomTextFiled(
                    placeholder: "Address line 1",
                    validator: requiredval,
                    controller: _addressline1controller,
                  ),
                  CustomTextFiled(
                    placeholder: "Address line 2",
                    validator: requiredval,
                    controller: _addressline2controller,
                  ),
                  Container(
                    width: 100.w,
                    margin: EdgeInsets.only(
                      left: 10.0.w,
                      right: 10.0.w,
                      top: 2.h,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                      style: ElevatedButton.styleFrom(
                        primary: maincolor,
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an acount?",
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: maincolor, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
