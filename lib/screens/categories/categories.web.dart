import 'package:flutter/material.dart';

class CategoriesWeb extends StatefulWidget {
  CategoriesWeb({Key? key}) : super(key: key);

  @override
  _CategoriesWebState createState() => _CategoriesWebState();
}

class _CategoriesWebState extends State<CategoriesWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Categories")),
    );
  }
}
