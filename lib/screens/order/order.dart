import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Email",
                    border: OutlineInputBorder(),
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
