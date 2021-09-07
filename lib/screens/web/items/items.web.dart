import 'package:flutter/material.dart';

class ItemsWeb extends StatefulWidget {
  ItemsWeb({Key? key}) : super(key: key);

  @override
  _ItemsWebState createState() => _ItemsWebState();
}

class _ItemsWebState extends State<ItemsWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Items")),
    );
  }
}
