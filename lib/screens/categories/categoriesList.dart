import 'package:addisecom/constants/categories.dart';
import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/screens/products/product_per_category.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CategoryAvatars extends StatelessWidget {
  // final CategoriesController cc = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 3.h),
      child: Container(
        width: 100.w,
        height: 10.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: sampleCategories
                .map((e) => CatAvatar(
                      category: e,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class CatAvatar extends StatelessWidget {
  final Category category;
  const CatAvatar({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          width: 20.w,
          child: Column(
            children: [
              CachedNetworkImage(
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  radius: 3.h,
                  backgroundColor: maincolor2,
                  backgroundImage: imageProvider,
                ),
                fit: BoxFit.cover,
                imageUrl: category.images,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Center(
                    child: Icon(
                  Icons.image_outlined,
                  size: 20.sp,
                  color: Colors.teal,
                )),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(category.name),
            ],
          )),
    );
  }
}
