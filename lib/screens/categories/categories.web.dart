import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/controllers/categories_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CategoryAvatars extends StatelessWidget {
  // final CategoriesController cc = Get.put(CategoriesController());

  var categoies = [
    {
      'name': "Food",
      'image':
          "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg"
    },
    {
      'name': "Electronics",
      'image':
          "https://cdn.pixabay.com/photo/2015/02/05/08/12/stock-624712_1280.jpg"
    },
    {
      'name': "House",
      'image':
          "https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg"
    },
    {
      'name': "Computer",
      'image':
          "https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_1280.jpg"
    },
    {
      'name': "Furniture",
      'image':
          "https://cdn.pixabay.com/photo/2016/04/18/13/53/room-1336497_1280.jpg"
    },
    {
      'name': "Baby",
      'image':
          "https://cdn.pixabay.com/photo/2017/02/08/02/56/booties-2047596_1280.jpg"
    },
    {
      'name': "Shoes",
      'image':
          "https://cdn.pixabay.com/photo/2016/11/19/18/06/feet-1840619_1280.jpg"
    },
    {
      'name': "Clothes",
      'image':
          "https://cdn.pixabay.com/photo/2017/08/10/08/00/suit-2619784_1280.jpg"
    },
    {
      'name': "Cars",
      'image':
          "https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_1280.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Container(
        width: 100.w,
        height: 10.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categoies
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
  final category;
  const CatAvatar({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              imageUrl: category['image'],
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
            Text(category['name'] ?? ""),
          ],
        ));
  }
}
