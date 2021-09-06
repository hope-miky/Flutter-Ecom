import 'package:addisecom/constants/products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 50.w,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
          width: 3.w,
        ),
        borderRadius: BorderRadius.circular(6.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 23.h,
            width: 45.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              // color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(product.imagepath!),
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
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
          Text(
            product.category,
            style:
                GoogleFonts.poppins(fontSize: 8.sp, color: Color(0xFF439DA3)),
          ),
          Text("\$${product.price}"),
        ],
      ),
    );
  }
}
