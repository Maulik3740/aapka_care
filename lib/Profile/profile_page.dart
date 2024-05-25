import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:fuerteads/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    // final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 229, 229, 229),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0 * s.customHeight),
          child: s.isDesktop
              ? Center(
                  child: const NavBar(),
                )
              : AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Color.fromARGB(255, 27, 181, 253),
                  scrolledUnderElevation: 0,
                  title: Row(
                    children: [
                      Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          ImagePath.adsLogo,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 20 * s.customWidth,
                      ),
                      Text(
                        "AAPKA CARE",
                        style: GoogleFonts.play(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          width: 370 * s.customWidth,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              "Download",
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 800,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  child: Image.asset(
                    'assets/i7.jpg',
                    fit: BoxFit.cover,
                  ),
                ).pOnly(top: 4),

                //black cover
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    color: Color.fromARGB(50, 0, 0, 0),
                  ).pOnly(top: 4),
                ),

                //details
                Positioned(
                  top: 200,
                  left: 75, // MediaQuery.of(context).size.width / 4,
                  child: Container(
                    width: 350,
                    height: 450,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(offset: Offset(0, 4), color: const Color.fromARGB(121, 0, 0, 0), spreadRadius: 3, blurRadius: 5)
                    ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    size: 25,
                                    color: Colors.green.shade700,
                                  ),
                                  10.heightBox,
                                  customText(text: "Full Time"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.heart_circle,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                  10.heightBox,
                                  customText(text: "85%"),
                                ],
                              )
                            ],
                          ),
                        ),
                        // 20.heightBox,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: "Name:"),
                              15.widthBox,
                              customText(text: "Dr. Roshan Mistri"),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: "Phone:"),
                              15.widthBox,
                              customText(text: "+918888888888"),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: "Specification:"),
                              15.widthBox,
                              customText(text: "Infectious Diseases "),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: "Experience:"),
                              15.widthBox,
                              customText(text: "3 years "),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: "Fee:"),
                              15.widthBox,
                              customText(text: "5k to 10k "),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //circle photo
                Positioned(
                  top: 100,
                  left: 165,
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400), shape: BoxShape.circle, boxShadow: [
                      BoxShadow(offset: Offset(0, 4), color: const Color.fromARGB(121, 0, 0, 0), spreadRadius: 3, blurRadius: 5)
                    ]),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Color.fromARGB(255, 86, 195, 249),
                      child: ClipOval(child: Image.asset('assets/d3.png')),
                    ),
                  ),
                ),

                //experience
                Positioned(
                  bottom: 10,
                  right: 100,
                  child: Container(
                    width: 800,
                    height: 500,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 140,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 2),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset('assets/d3.png', fit: BoxFit.contain),
                                        ).p12(),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            customText(text: "Sterling Hospital Rajkot"),
                                            customText(text: "Infectious Diseases"),
                                            customText(text: "Online Consulation"),
                                            customText(text: "Dec-2021,March-2023"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10), // 10.heightBox equivalent
                          ],
                        );
                      },
                    ),

                    // SingleChildScrollView(
                    //   scrollDirection: Axis.vertical,
                    //   child:
                    //   Column(
                    //     children: [
                    //       customText(text: "Practice Experience"),
                    //       10.heightBox,
                    //       // ListView.builder(
                    //       //   itemCount: 10,
                    //       //   itemBuilder: (context, index) {
                    //       //     return Column(
                    //       //       children: [
                    //       //         Row(
                    //       //           children: [
                    //       //             Expanded(
                    //       //               child: Container(
                    //       //                 decoration: BoxDecoration(
                    //       //                   borderRadius: BorderRadius.circular(5),
                    //       //                   color: Colors.white,
                    //       //                   border: Border.all(color: Colors.black),
                    //       //                 ),
                    //       //                 child: Row(
                    //       //                   children: [
                    //       //                     Container(
                    //       //                       height: 70,
                    //       //                       width: 140,
                    //       //                       padding: EdgeInsets.all(8),
                    //       //                       decoration: BoxDecoration(
                    //       //                         border: Border.all(color: Colors.black, width: 2),
                    //       //                         borderRadius: BorderRadius.circular(10),
                    //       //                       ),
                    //       //                       child: Image.asset('assets/d3.png', fit: BoxFit.contain),
                    //       //                     ).p12(),
                    //       //                     Column(
                    //       //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //       //                       children: [
                    //       //                         customText(text: "Sterling Hospital Rajkot"),
                    //       //                         customText(text: "Infectious Diseases"),
                    //       //                         customText(text: "Online Consulation"),
                    //       //                         customText(text: "Dec-2021,March-2023"),
                    //       //                       ],
                    //       //                     ),
                    //       //                   ],
                    //       //                 ),
                    //       //               ),
                    //       //             ),
                    //       //           ],
                    //       //         ),
                    //       //         SizedBox(height: 10), // 10.heightBox equivalent
                    //       //       ],
                    //       //     );
                    //       //   },
                    //       // ),

                    //       // Row(
                    //       //   children: [
                    //       //     Expanded(
                    //       //       child: Container(
                    //       //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white, border: Border.all(color: Colors.black)),
                    //       //         child: Row(
                    //       //           children: [
                    //       //             Container(
                    //       //               height: 70,
                    //       //               width: 140,
                    //       //               padding: EdgeInsets.all(8),
                    //       //               decoration: BoxDecoration(
                    //       //                 border: Border.all(color: Colors.black, width: 2),
                    //       //                 borderRadius: BorderRadius.circular(10),
                    //       //               ),
                    //       //               child: Image.asset("assets/hlogo.png", fit: BoxFit.contain),
                    //       //             ).p12(),
                    //       //             Column(
                    //       //               crossAxisAlignment: CrossAxisAlignment.start,
                    //       //               children: [
                    //       //                 customText(text: "Sterling Hospital Rajkot"),
                    //       //                 customText(text: "Infectious Diseases"),
                    //       //                 customText(text: "Online Consulation"),
                    //       //                 customText(text: "Dec-2021,March-2023"),
                    //       //               ],
                    //       //             )
                    //       //           ],
                    //       //         ),
                    //       //       ),
                    //       //     ),
                    //       //   ],
                    //       // ),
                    //       // 10.heightBox,
                    //     ],
                    //   ).px12(),
                    // ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class customText extends StatelessWidget {
  final String text;
  const customText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      text,
      style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
    );
  }
}
