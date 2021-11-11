import 'package:addisecom/constants/products.dart';
import 'package:addisecom/controllers/cart_controller.dart';
import 'package:addisecom/models/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class CartCard extends StatelessWidget {
  final int productindex;
  final Function recalculatePrice;
  final Function addCartValue;
  final CartController cac = Get.put(CartController());

  CartCard({
    required this.productindex,
    required this.recalculatePrice,
    required this.addCartValue,
  });

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
              imageUrl: cac.products_in_cart[productindex].images.isEmpty
                  ? ""
                  : baseurl + cac.products_in_cart[productindex].images[0],
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
                  cac.products_in_cart[productindex].name,
                  overflow: TextOverflow.ellipsis,
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
                  "\$${cac.products_in_cart[productindex].price}",
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
                InkWell(
                  onTap: () {
                    // cac.products_in_cart[].cart++;
                    addCartValue(productindex, 1);
                    recalculatePrice();
                  },
                  child: Icon(
                    FontAwesomeIcons.plusCircle,
                    color: Color(0xFF65D1D8),
                  ),
                ),
                Obx(
                  () => Text(
                    cac.getCartValue(productindex),
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (cac.products_in_cart[productindex].cart > 0) {
                      // cac.products_in_cart[productindex].cart--;
                      addCartValue(productindex, -1);
                      recalculatePrice();
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.minusCircle,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
