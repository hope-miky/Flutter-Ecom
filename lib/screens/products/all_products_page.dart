import 'package:addisecom/constants/categories.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/controllers/categories_controller.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/screens/products/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AllProductsPage extends StatelessWidget {
  final ProductController pc = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Products",
          style: GoogleFonts.poppins(
            fontSize: 18.sp,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        CategoriesList(),
        SizedBox(
          height: 1.h,
        ),
        Container(
          height: 76.h,
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
                new StaggeredTile.count(2, index != 1 ? 3.2 : 1),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      ],
    );
  }
}

class CategoriesList extends StatefulWidget {
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
                .map((e) => CategoryWidget(
                      category: e,
                    ))
                .toList(),
          ),
        ));
  }
}

class CategoryWidget extends StatefulWidget {
  final Category category;
  const CategoryWidget({required this.category});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.category.setfilterd(!widget.category.filtered);
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.w),
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        decoration: BoxDecoration(
          color: widget.category.filtered == true ? Colors.teal : Colors.white,
          border: Border.all(
              color: widget.category.filtered == true
                  ? Colors.teal
                  : Colors.black),
          borderRadius: BorderRadius.circular(1.w),
        ),
        child: Text(
          widget.category.name,
          style: GoogleFonts.poppins(
            fontSize: 11.sp,
            color:
                widget.category.filtered == true ? Colors.white : Colors.black,
            fontWeight: widget.category.filtered == true
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
