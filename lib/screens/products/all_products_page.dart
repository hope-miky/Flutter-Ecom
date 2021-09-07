import 'package:addisecom/constants/categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AllProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Products",
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
              ),
            ),
            CategoriesList()
          ],
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  String _selectedCat = "Electronics";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: categories
            .map((e) => CategoryWidget(
                  category: e,
                  selected: _selectedCat,
                ))
            .toList(),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final Categories? category;
  final String? selected;
  const CategoryWidget({this.category, this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category!.name,
            style: GoogleFonts.poppins(
              fontSize: 11.sp,
            ),
          ),
          selected == category!.name
              ? Container(
                  height: 3,
                  width: 5.w,
                  margin: EdgeInsets.only(left: 4),
                  color: Color(0xFF65D1D8),
                )
              : Container()
        ],
      ),
    );
  }
}
