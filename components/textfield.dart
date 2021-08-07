import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiled extends StatelessWidget {
  final placeholder;
  final obscure;
  const CustomTextFiled({@required this.placeholder, this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 1.h),
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: placeholder,
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
