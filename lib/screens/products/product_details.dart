import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/constants/reviews.dart';
import 'package:addisecom/models/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 85.h,
            width: 100.w,
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
              fit: BoxFit.contain,
              imageUrl: widget.product.images.isEmpty
                  ? imageurl
                  : baseurl + widget.product.images[0],
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.error)),
            ),
          ),
          Positioned(
            top: 7.h,
            right: 5.w,
            child: Column(
              children: [
                InkWell(
                  // onTap: () {
                  //   setState(() {
                  //     widget.product!.liked = !widget.product!.liked;
                  //   });
                  // },
                  child: CircleAvatar(
                    radius: 5.w,
                    backgroundColor: Colors.white.withOpacity(.7),
                    child: Center(
                      child: Icon(
                        // !widget.product!.liked
                        //     ? FontAwesomeIcons.heart
                        // :
                        FontAwesomeIcons.solidHeart,
                        size: 12.sp,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 5.w,
                    backgroundColor: Colors.white.withOpacity(.7),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.share,
                        size: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 5.w,
                    backgroundColor: Colors.white.withOpacity(.7),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.save,
                        size: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.3,
            builder: (BuildContext context, myscrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.w),
                ),
                child: ListView(
                  controller: myscrollController,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 45.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  widget.product.name,
                                  // maxLines: 1,
                                  // overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                widget.product.category == null
                                    ? "category"
                                    : widget.product.category!.name,
                                style: GoogleFonts.poppins(
                                    fontSize: 8.sp, color: Color(0xFF439DA3)),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                widget.product.description ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 9.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30.w,
                          child: Column(
                            children: [
                              RatingBarIndicator(
                                rating: 3.5,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: maincolor,
                                ),
                                itemCount: 5,
                                itemSize: 12.sp,
                                direction: Axis.horizontal,
                              ),
                              Text(
                                "(322 reviews)",
                                style: GoogleFonts.poppins(
                                  fontSize: 8.sp,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${widget.product.price}",
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Container(
                        //   width: 30.w,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       Icon(
                        //         FontAwesomeIcons.plus,
                        //         size: 8.sp,
                        //         color: Color(0xFF65D1D8),
                        //       ),
                        //       Text(
                        //         "12",
                        //         style: GoogleFonts.poppins(
                        //           fontSize: 11.sp,
                        //         ),
                        //       ),
                        //       Icon(
                        //         FontAwesomeIcons.minus,
                        //         size: 8.sp,
                        //         color: Colors.grey,
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 1.h),
                          decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Text("Add to Cart"),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    // ExpansionTile(
                    //   title: Text("Product Descriptions"),
                    //   textColor: maincolor,
                    //   children: [
                    //     ProductDescriptionProperty(
                    //       property: "Brand",
                    //       value: "NIKE",
                    //     ),
                    //     ProductDescriptionProperty(
                    //       property: "Provider",
                    //       value: "SomeFord LLC",
                    //     ),
                    //     ProductDescriptionProperty(
                    //       property: "Color",
                    //       value: "Black",
                    //     ),
                    //     ProductDescriptionProperty(
                    //       property: "Weight",
                    //       value: "12kg",
                    //     ),
                    //     ProductDescriptionProperty(
                    //       property: "Description",
                    //       value: "Some description about the product stuff.",
                    //     ),
                    //   ],
                    // ),

                    // ExpansionTile(
                    //   title: Text("See all reviews"),
                    //   textColor: maincolor,
                    //   children: reviewList
                    //       .map((e) => ReviewCard(
                    //             review: e,
                    //           ))
                    //       .toList(),
                    // )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class ProductDescriptionProperty extends StatelessWidget {
  final String property;
  final String value;

  const ProductDescriptionProperty({
    Key? key,
    this.property = "<property>",
    this.value = "<value>",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.25.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 25.w,
            child: Text(
              property + ":",
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Container(
            width: 30.w,
            child: Text(
              value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontSize: 9.sp,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  Review? review;
  ReviewCard({Key? key, this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 5.w,
            backgroundColor: Colors.white,
            child: CachedNetworkImage(
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(3.w),
                  border: Border.all(color: Colors.grey.withOpacity(.4)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              fit: BoxFit.cover,
              imageUrl: review!.authorimage,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.error)),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        review!.name,
                        style: GoogleFonts.poppins(
                            fontSize: 11.sp, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.more_horiz,
                      )
                    ],
                  ),
                  Text(
                    review!.date,
                    style: GoogleFonts.poppins(
                      fontSize: 8.sp,
                      color: Colors.teal,
                    ),
                  ),
                  RatingBarIndicator(
                    rating: review!.rating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: maincolor,
                    ),
                    itemCount: 5,
                    itemSize: 11.sp,
                    direction: Axis.horizontal,
                  ),
                  Text(
                    review!.review,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 9.sp,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Like (2)",
                          style: TextStyle(
                            color: review!.liked ? Colors.red : Colors.grey,
                          ),
                        ),
                        icon: Icon(
                          Icons.thumb_up,
                          size: 10.sp,
                          color: review!.liked ? Colors.red : Colors.grey,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Replay",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        icon: Icon(
                          Icons.reply_all,
                          size: 10.sp,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
