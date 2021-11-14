import 'package:addisecom/constants/categories.dart';
import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/controllers/categories_controller.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/screens/products/product_card.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AllProductsPage extends StatelessWidget {
  final ProductController pc = Get.put(ProductController());

  filterCategory(Category category) async {
    await pc.filterByCategory(category);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          title: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              prefixIconConstraints: BoxConstraints(
                minWidth: 10.w,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 3.w,
              ),
              isDense: true,
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            SizedBox(
              width: 7.w,
            )
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        CategoriesList(
          filter: filterCategory,
        ),
        SizedBox(
          height: 1.h,
        ),
        Obx(
          () => Expanded(
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: pc.products.length,
              itemBuilder: (BuildContext context, int index) => index != 1
                  ? ProductCard(pc.products[index])
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
              crossAxisSpacing: 4.0,
            ),
          ),
        )
      ],
    );
  }
}

class CategoriesList extends StatefulWidget {
  final Function filter;

  CategoriesList({required this.filter});
  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final CategoriesController cc = Get.put(CategoriesController());

  Future fetchCategory() async {
    await cc.fetchCategories();
  }

  @override
  void initState() {
    super.initState();
    fetchCategory();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cc.categories
                .map((category) => InkWell(
                      onTap: () async {
                        if (!category.filtered) {
                          await cc.clearFilter();
                          widget.filter(category);
                        }
                        setState(() {
                          category.setfilterd(!category.filtered);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        decoration: BoxDecoration(
                          color: category.filtered == true
                              ? Colors.teal
                              : Colors.white,
                          border: Border.all(
                              color: category.filtered == true
                                  ? Colors.teal
                                  : Colors.black),
                          borderRadius: BorderRadius.circular(1.w),
                        ),
                        child: Text(
                          category.name,
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: category.filtered == true
                                ? Colors.white
                                : Colors.black,
                            fontWeight: category.filtered == true
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ));
  }
}
