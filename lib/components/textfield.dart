import 'package:addisecom/mixin/tefield_validation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiled extends StatefulWidget {
  final placeholder;
  final obscure;
  final validator;
  const CustomTextFiled(
      {@required this.placeholder, this.obscure = false, this.validator});

  @override
  _CustomTextFiledState createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool _obscureval = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 1.h),
      child: TextFormField(
        obscureText: widget.obscure ? _obscureval : false,
        validator: (value) => widget.validator(value),
        decoration: InputDecoration(
          hintText: widget.placeholder,
          suffixIcon: widget.obscure
              ? InkWell(
                  onTap: () {
                    setState(() {
                      _obscureval = !_obscureval;
                    });
                  },
                  child: Icon(
                      _obscureval ? Icons.visibility : Icons.visibility_off),
                )
              : Container(
                  width: 0,
                ),
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
