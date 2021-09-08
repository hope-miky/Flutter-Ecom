import 'package:addisecom/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  const CustomSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyle(color: maincolor, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
