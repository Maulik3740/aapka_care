// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuerteads/Pages/SubScription-Plan/main_subscription_plan.dart';
import 'package:fuerteads/widgets/Razorpay.dart';
import 'package:fuerteads/widgets/textFiled.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:velocity_x/velocity_x.dart';

class SubscriptionPlanWeb extends StatefulWidget {
  const SubscriptionPlanWeb({super.key});

  @override
  State<SubscriptionPlanWeb> createState() => _SubscriptionPlanWebState();
}

class _SubscriptionPlanWebState extends State<SubscriptionPlanWeb> {
  int leftSelectedOption = 0;
  int chooseCardOption = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _addressController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var razor = RazorPayIntegration(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 233, 233, 1),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                // height: 700,
                width: 750,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromRGBO(254, 236, 214, 1),
                          child: Image.asset(height: 35.0, "assets/images/logo.png"),
                        ),
                        20.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subscription Plan",
                              style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Unlock instant access to all users",
                              style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, color: Color.fromARGB(229, 117, 117, 117)),
                            ),
                          ],
                        )
                      ],
                    ),
                    10.heightBox,
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    10.heightBox,
                    Expanded(
                      child: Row(
                        children: [
                          // Left Side View

                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  // First Choose Plan Cupertino Radio Button
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Choose Plan",
                                        style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),

                                  10.heightBox,

                                  // First Pro Plan Container
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        leftSelectedOption = 0;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Color.fromRGBO(248, 248, 248, 1), borderRadius: BorderRadius.circular(5.0)),
                                            height: 60,
                                            child: Row(
                                              children: [
                                                // For Custom radio Button Container
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(border: Border.all(color: leftSelectedOption == 0 ? Colors.deepPurple : Colors.black, width: 1.0), shape: BoxShape.circle),
                                                  child: Center(
                                                    child: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(color: leftSelectedOption == 0 ? Colors.deepPurple : Colors.white, shape: BoxShape.circle),
                                                    ),
                                                  ),
                                                ),

                                                15.widthBox,

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "Pro Plan",
                                                    ),
                                                    subHeading(
                                                      text: "Crafted for Individuals",
                                                    ),
                                                  ],
                                                ),

                                                Spacer(),

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "\₹1000.00",
                                                    ),
                                                    subHeading(
                                                      text: "10 User / Quarterly",
                                                    ),
                                                  ],
                                                ).pOnly(right: 10.0),
                                              ],
                                            ).px(8),
                                          ).pOnly(right: 5.0),
                                        ),
                                      ],
                                    ),
                                  ),

                                  10.heightBox,

                                  // Second Team Plan Container
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        leftSelectedOption = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Color.fromRGBO(248, 248, 248, 1), borderRadius: BorderRadius.circular(5.0)),
                                            // height: 150,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                // Team Plan Main Heading Row
                                                10.heightBox,
                                                Row(
                                                  children: [
                                                    // For Custom Radio Button Container
                                                    Container(
                                                      height: 12,
                                                      width: 12,
                                                      decoration: BoxDecoration(border: Border.all(color: leftSelectedOption == 1 ? Colors.deepPurple : Colors.black, width: 1.0), shape: BoxShape.circle),
                                                      child: Center(
                                                        child: Container(
                                                          height: 6,
                                                          width: 6,
                                                          decoration: BoxDecoration(color: leftSelectedOption == 1 ? Colors.deepPurple : Colors.white, shape: BoxShape.circle),
                                                        ),
                                                      ),
                                                    ),

                                                    15.widthBox,
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        mainHeading(
                                                          text: "Team Plan",
                                                        ),
                                                        subHeading(
                                                          text: "Crafted for small teams or business",
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        mainHeading(
                                                          text: "\₹5000.00",
                                                        ),
                                                        subHeading(
                                                          text: "50 User / Quarterly",
                                                        ),
                                                      ],
                                                    ).pOnly(right: 10.0),
                                                  ],
                                                ).p(8),

                                                10.heightBox,
                                                // For write icon list 1
                                                doneLine(text: "50 downloads per day"),
                                                10.heightBox,

                                                // For write icon list 2
                                                doneLine(text: "Access to all products or bundles"),
                                                10.heightBox,

                                                // For write icon list 3
                                                doneLine(text: "Early access to new/beta release features"),
                                                20.heightBox,
                                              ],
                                            ),
                                          ).pOnly(right: 5.0),
                                        )
                                      ],
                                    ),
                                  ),

                                  10.heightBox,

                                  // Third Business Pro Container

                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        leftSelectedOption = 2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Color.fromRGBO(248, 248, 248, 1), borderRadius: BorderRadius.circular(5.0)),
                                            height: 60,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(border: Border.all(color: leftSelectedOption == 2 ? Colors.deepPurple : Colors.black, width: 1.0), shape: BoxShape.circle),
                                                  child: Center(
                                                    child: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(color: leftSelectedOption == 2 ? Colors.deepPurple : Colors.white, shape: BoxShape.circle),
                                                    ),
                                                  ),
                                                ),
                                                15.widthBox,
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "Business Pro",
                                                    ),
                                                    subHeading(
                                                      text: "For Big Teams",
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "\₹10000.00",
                                                    ),
                                                    subHeading(
                                                      text: "100 User / Quarterly",
                                                    ),
                                                  ],
                                                ).pOnly(right: 10.0),
                                              ],
                                            ).px(8),
                                          ).pOnly(right: 5.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ).pOnly(right: 10.0),
                          ),

                          // Right Side View
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  // Payment Plan Cupertino Radio Button Line
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Fill Your Details",
                                        style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),

                                  10.heightBox,

                                  // Form
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Color.fromRGBO(248, 248, 248, 1), borderRadius: BorderRadius.circular(5.0)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              // Form
                                              Form(
                                                key: _formKey,
                                                child: Column(
                                                  children: <Widget>[
                                                    CustomTextField(
                                                      controller: _addressController,
                                                      hintText: 'Full Name',
                                                      icon: Icon(Icons.person),
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Please enter your Name';
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                    10.heightBox,
                                                    CustomTextField(
                                                      controller: _cityController,
                                                      hintText: 'Address',
                                                      icon: Icon(Icons.location_on_rounded),
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Please enter your address';
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                    10.heightBox,
                                                    CustomTextField(
                                                      controller: _stateController,
                                                      hintText: 'Mobile No.',
                                                      icon: Icon(Icons.phone),
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Please enter your state';
                                                        } else if (value.length != 10) {
                                                          return 'Mobile no. must be 10 digits';
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                    10.heightBox,
                                                    CustomTextField(
                                                      controller: _pincodeController,
                                                      hintText: 'Pincode',
                                                      icon: Icon(Icons.pin),
                                                      keyboardType: TextInputType.number,
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Please enter your pincode';
                                                        } else if (value.length != 6) {
                                                          return 'Pincode must be 6 digits';
                                                        } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                                                          return 'Pincode must be a number';
                                                        }
                                                        return "null";
                                                      },
                                                    ),
                                                    SizedBox(height: 10),
                                                  ],
                                                ),
                                              ).px24(),

                                              8.heightBox,

                                              // 30% Discount code heading
                                            ],
                                          ).p(8),
                                        ).pOnly(right: 5.0),
                                      ),
                                    ],
                                  ),

                                  10.heightBox,

                                  // Pay Button
                                  Row(
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            if (_formKey.currentState!.validate()) {
                                              razor.openSession();
                                              // razor.initiateRazorPay();
                                            }
                                          },
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(60, 97, 229, 1),
                                              borderRadius: BorderRadius.circular(5.0),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "PAY NOW",
                                                style: GoogleFonts.poppins(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ).pOnly(right: 5.0),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ).py16(),
      ),
    );
  }
}
