import 'package:addisecom/mixin/tefield_validation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiled extends StatelessWidget {
  final placeholder;
  final obscure;
  final validator;
  const CustomTextFiled(
      {@required this.placeholder, this.obscure = false, this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 1.h),
      child: TextFormField(
        obscureText: obscure,
        validator: (value) => validator(value),
        decoration: InputDecoration(
          hintText: placeholder,
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
