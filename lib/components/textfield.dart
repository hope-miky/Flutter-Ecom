import 'package:addisecom/constants/contries.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiled extends StatefulWidget {
  final placeholder;
  final validator;
  final Function? onchanged;
  final TextEditingController? controller;
  final TextEditingController? contrycodecontroller;
  final CustomInputTypes inputtype;

  const CustomTextFiled(
      {@required this.placeholder,
      this.validator,
      this.onchanged,
      this.controller,
      this.contrycodecontroller,
      this.inputtype = CustomInputTypes.text});

  @override
  _CustomTextFiledState createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  final FocusNode _focusNode = FocusNode();
  var _contries = countryList;
  OverlayEntry? _overlayEntry;
  String _selectedcontry = "Ethiopia";

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (widget.inputtype == CustomInputTypes.country) if (_focusNode
          .hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context)!.insert(_overlayEntry!);
      } else {
        _overlayEntry!.remove();
      }
    });
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        builder: (context) => Positioned(
              left: 10.w,
              right: 10.w,
              top: offset.dy + size.height + 5.0,
              // width: size.width,
              child: Material(
                elevation: 4.0,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: _contries.length < 6 ? 6.h * _contries.length : 30.h,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: _contries
                        .map((e) => ListTile(
                              selectedTileColor: Colors.blueGrey,
                              selected: e == _selectedcontry,
                              title: Text(e),
                              onTap: () {
                                setState(() {
                                  widget.controller!.text = e;
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
              ),
            ));
  }

  bool _obscureval = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 1.h),
      child: TextFormField(
        focusNode: _focusNode,
        controller: widget.controller,
        obscureText:
            widget.inputtype == CustomInputTypes.password ? _obscureval : false,
        validator: widget.validator != null
            ? (value) => widget.validator(value, widget.placeholder)
            : (value) => null,
        textInputAction: TextInputAction.next,
        keyboardType: widget.inputtype == CustomInputTypes.phone
            ? TextInputType.number
            : TextInputType.text,
        readOnly: widget.inputtype == CustomInputTypes.date ? true : false,
        onChanged: (String value) {
          _contries = countryList
              .where((element) => element.toString().contains(value))
              .toList();
          setState(() {});
        },
        onTap: widget.inputtype == CustomInputTypes.date
            ? () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1600),
                    lastDate: DateTime.now());

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
          prefix: widget.inputtype == CustomInputTypes.phone
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
          prefixIcon: widget.inputtype == CustomInputTypes.date
              ? Icon(Icons.date_range)
              : null,
          labelText: widget.placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: widget.inputtype == CustomInputTypes.password
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

enum CustomInputTypes { text, number, password, phone, date, country }
