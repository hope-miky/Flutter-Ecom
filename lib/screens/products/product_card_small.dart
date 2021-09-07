import 'package:addisecom/constants/products.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ProductCardSmall extends StatelessWidget {
  final Product? product;

  ProductCardSmall({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 70.w,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.w),
        border: Border.all(
          color: Colors.white,
          width: 3.w,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 15.h,
            width: 25.w,
            decoration: BoxDecoration(),
            child: CachedNetworkImage(
              imageUrl: product!.imagepath!,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.w),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Shimmer.fromColors(
                child: Container(
                  height: 15.h,
                  width: 25.w,
                  color: Colors.white,
                ),
                baseColor: Colors.white,
                highlightColor: Colors.white24,
              ),
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.error)),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.5.h,
                ),
                Text(
                  product!.name,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  "Some des about a product which is about 2 lines",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 7.sp,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "By: Sample Provider",
                  style: GoogleFonts.poppins(
                    fontSize: 8.sp,
                    color: Color(0xFF439DA3),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 10.sp,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "3.4",
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
