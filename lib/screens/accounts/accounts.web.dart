import 'package:flutter/material.dart';

class AccountsWeb extends StatefulWidget {
  AccountsWeb({Key? key}) : super(key: key);

  @override
  _AccountsWebState createState() => _AccountsWebState();
}

class _AccountsWebState extends State<AccountsWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Accounts")),
    );
  }
}
