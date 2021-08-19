import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiled extends StatefulWidget {
  final placeholder;
  final obscure;
  final validator;
  final phonenum;
  final bool date;
  final Function? onchanged;
  final TextEditingController? controller;
  final TextEditingController? contrycodecontroller;

  const CustomTextFiled(
      {@required this.placeholder,
      this.obscure = false,
      this.validator,
      this.phonenum = false,
      this.date = false,
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
        textInputAction: TextInputAction.next,
        keyboardType:
            widget.phonenum ? TextInputType.number : TextInputType.text,
        readOnly: widget.date,
        onTap: widget.date
            ? () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(
                        2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101));

                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  //you can implement different kind of Date Format here according to your requirement

                  setState(() {
                    widget.controller!.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {
                  print("Date is not selected");
                }
              }
            : null,
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
          prefixIcon: widget.date ? Icon(Icons.date_range) : null,
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
