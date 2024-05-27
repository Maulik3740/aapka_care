import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileMobile extends StatefulWidget {
  @override
  State<ProfileMobile> createState() => _ProfileMobileState();
}

class _ProfileMobileState extends State<ProfileMobile> {
  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 162, 239, 1),
      endDrawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0 * s.customHeight),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(0, 162, 239, 1),
          scrolledUnderElevation: 0,
          title: Container(
            width: 150,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              ImagePath.adsLogo,
              fit: BoxFit.fill,
            ),
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 75),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 1.5),
                  boxShadow: [
                    BoxShadow(spreadRadius: 3, blurRadius: 4, offset: Offset(0, 3), color: Colors.grey.shade400)
                  ],
                  shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Color.fromARGB(255, 86, 195, 249),
                child: ClipOval(
                  child: FadeInImage(
                    placeholder: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png'),
                    image: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png'),
                    fit: BoxFit.cover,
                    width: 140,
                    height: 140,
                    fadeInDuration: Duration(seconds: 2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 145,
            child: Column(
              children: [
                Text(
                  "name",
                  style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text(
                  "specification",
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                15.heightBox,
                Row(
                  children: [
                    Icon(
                      size: 25,
                      Icons.work_history_outlined,
                      color: Colors.blue,
                    ),
                    5.widthBox,
                    Text(
                      "experience",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    30.widthBox,
                    Icon(
                      Icons.access_time_outlined,
                      size: 25,
                      color: Colors.green.shade700,
                    ),
                    5.widthBox,
                    Text(
                      "time",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    30.widthBox,
                    Icon(
                      CupertinoIcons.heart_circle,
                      size: 25,
                      color: Colors.red,
                    ),
                    5.widthBox,
                    Text(
                      "like",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                15.heightBox,
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 12),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(spreadRadius: 3, blurRadius: 5, offset: Offset(0, 2), color: Colors.grey.shade400)
                                ], border: Border.all(color: Colors.grey.shade300), color: Colors.grey.shade100, borderRadius: BorderRadius.circular(5)),
                                height: 150,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey.shade700, width: 1),
                                        boxShadow: [
                                          BoxShadow(spreadRadius: 3, blurRadius: 4, offset: Offset(2, 2), color: Colors.grey.shade400)
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Image.network('assets/8.png', fit: BoxFit.contain),
                                    ).p12(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        customText(text: 'hname'),
                                        customText(text: 'hspecification'),
                                        customText(text: 'hwork'),
                                      ],
                                    ),
                                  ],
                                ),
                              ).p(10),
                            )
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
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
      text,
      style: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
    );
  }
}
