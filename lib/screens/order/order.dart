import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/controllers/cart_controller.dart';
import 'package:addisecom/controllers/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderPage extends StatelessWidget {
  OrderPage({Key? key}) : super(key: key);
  final CartController cac = Get.put(CartController());
  final OrderController pc = Get.put(OrderController());

  TextEditingController _fullnamecontroller = new TextEditingController();
  TextEditingController _phonenumcontroller = new TextEditingController();
  TextEditingController _citycontroller = new TextEditingController();
  TextEditingController _addresscontroller = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    _fullnamecontroller.text = "Tesfamichael";
    _phonenumcontroller.text = "+251948246857";
    _citycontroller.text = "Addis Ababa";
    _addresscontroller.text = "Dembel";
    _emailcontroller.text = "te@te.com";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text('Place an Order'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: SizedBox.expand(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                ),
                child: TextFormField(
                  controller: _fullnamecontroller,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Full Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                ),
                child: TextFormField(
                  controller: _phonenumcontroller,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                ),
                child: TextFormField(
                  controller: _citycontroller,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "City",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                ),
                child: TextFormField(
                  controller: _addresscontroller,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Address",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                ),
                child: TextFormField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 7.w,
                ),
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "+ Cost:     \$ ${cac.totalCost}",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                        ),
                      ),
                      Text(
                        "+ Delivery:     \$ 25",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                        ),
                      ),
                      Divider(),
                      Text(
                        "Total:     +\$ ${cac.totalCost.value + 25}",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
                width: 100.w,
                child: ElevatedButton(
                  onPressed: () async {
                    await pc.placeAnOrder(
                      email: _emailcontroller.text,
                      fullname: _fullnamecontroller.text,
                      phonenum: _phonenumcontroller.text,
                      city: _citycontroller.text,
                      address: _addresscontroller.text,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: maincolor,
                  ),
                  child: Text(
                    "Proceed",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
