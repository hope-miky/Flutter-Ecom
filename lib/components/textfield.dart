import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiled extends StatefulWidget {
  final placeholder;
  final obscure;
  final validator;
  final phonenum;
  final Function? onchanged;
  final TextEditingController? controller;
  final TextEditingController? contrycodecontroller;

  const CustomTextFiled(
      {@required this.placeholder,
      this.obscure = false,
      this.validator,
      this.phonenum = false,
      this.onchanged,
      this.controller,
      this.contrycodecontroller});

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
        controller: widget.controller,
        obscureText: widget.obscure ? _obscureval : false,
        validator: (value) => widget.validator(value),
        decoration: InputDecoration(
          prefix: widget.phonenum
              ? Container(
                  width: 10.w,
                  margin: EdgeInsets.only(right: 10),
                  child: Center(
                    child: TextField(
                      controller: widget.contrycodecontroller,
                      style: TextStyle(color: Colors.blueGrey),
                      maxLength: 4,
                      decoration: InputDecoration(
                        counterText: "",
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              : null,
          labelText: widget.placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
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
