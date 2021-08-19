import 'package:addisecom/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LogoText extends StatelessWidget {
  const LogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
