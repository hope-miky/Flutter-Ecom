import 'package:addisecom/constants/products.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatefulWidget {
  Product product;
  ProductCard(this.product);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 35.h,
          width: 50.w,
          margin: EdgeInsets.symmetric(horizontal: 3.w),
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
                decoration: BoxDecoration(),
                child: CachedNetworkImage(
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.w),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  fit: BoxFit.cover,
                  imageUrl: widget.product.imagepath!,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) =>
                      Center(child: Icon(Icons.error)),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product.name,
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
                widget.product.category,
                style: GoogleFonts.poppins(
                    fontSize: 8.sp, color: Color(0xFF439DA3)),
              ),
              Text("\$${widget.product.price}"),
            ],
          ),
        ),
        Positioned(
          right: 9.w,
          top: 3.h,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.product.liked = !widget.product.liked;
              });
            },
            child: CircleAvatar(
              radius: 4.w,
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(
                  !widget.product.liked
                      ? FontAwesomeIcons.heart
                      : FontAwesomeIcons.solidHeart,
                  size: 12.sp,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
