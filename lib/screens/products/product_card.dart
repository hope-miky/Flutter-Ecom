import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/controllers/cart_controller.dart';
import 'package:addisecom/models/product_model.dart';
import 'package:addisecom/screens/products/product_details.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatefulWidget {
  Product product;
  ProductCard(this.product);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  // final CartController cac = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      product: widget.product,
                    )));
          },
          child: Container(
            height: 30.h,
            width: 45.w,
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 3.w,
              ),
              borderRadius: BorderRadius.circular(4.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
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
                    imageUrl: widget.product.images.isEmpty
                        ? imageurl
                        : widget.product.images[0],
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
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 25.w,
                      child: Text(
                        widget.product.name,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                        ),
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
                  widget.product.categoryId != null
                      ? widget.product.category!.name
                      : "Others",
                  style: GoogleFonts.poppins(
                      fontSize: 8.sp, color: Color(0xFF439DA3)),
                ),
                Text("\$${widget.product.price}"),
              ],
            ),
          ),
        ),
        Positioned(
          right: 9.w,
          top: 3.h,
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 4.w,
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.shopify,
                  size: 11.sp,
                  color: maincolor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
