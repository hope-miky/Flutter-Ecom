import 'package:addisecom/constants/products.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class CartCard extends StatelessWidget {
  final Product? product;

  CartCard({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
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
            height: 13.h,
            width: 20.w,
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
                  "By: Sample Provider",
                  style: GoogleFonts.poppins(
                    fontSize: 8.sp,
                    color: Color(0xFF439DA3),
                  ),
                ),
                Text(
                  "\$${product!.price}",
                  style: GoogleFonts.poppins(
                    fontSize: 9.sp,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 10.w,
            height: 13.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  FontAwesomeIcons.plusCircle,
                  color: Color(0xFF65D1D8),
                ),
                Text(
                  "12",
                  style: GoogleFonts.poppins(
                    fontSize: 11.sp,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.minusCircle,
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
