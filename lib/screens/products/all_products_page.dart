import 'package:addisecom/constants/categories.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/screens/products/product_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
            CategoriesList(),
            SizedBox(
              height: 1.h,
            ),
            // Container(
            //   height: 90.h,
            //   child: CustomScrollView(
            //     primary: false,
            //     slivers: <Widget>[
            //       SliverPadding(
            //         padding: const EdgeInsets.all(0),
            //         sliver: SliverGrid.count(
            //           crossAxisSpacing: 0,
            //           mainAxisSpacing: 10,
            //           crossAxisCount: 2,
            //           childAspectRatio: 0.65,
            //           children: productlist.map((e) => ProductCard(e)).toList(),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Container(
              height: 90.h,
              child: new StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: productlist.length,
                itemBuilder: (BuildContext context, int index) => index != 1
                    ? ProductCard(productlist[index])
                    : Center(
                        child: Text(
                          "432 \nResults",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index != 1 ? 3 : 1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  final String _selectedCat = "Electronics";

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
