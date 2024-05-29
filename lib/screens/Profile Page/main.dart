import 'package:flutter/material.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileWeb extends StatelessWidget {
  const ProfileWeb({super.key});

  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0 * s.customHeight),
        child: AppBar(
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Download",
                      style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            5.heightBox,
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  // color: Color.fromARGB(255, 246, 246, 246),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 27, 181, 253),
                    Color.fromARGB(255, 246, 246, 246),
                  ])),
              width: double.infinity,
              height: 400,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset(
                          'assets/d3.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ).pOnly(left: s.width < 1024 ? 20 : 100),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          50.heightBox,
                          Text(
                            "Dr. Naresh Trehan",
                            style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                          Text(
                            "Chairman & Managing Director , Menanta",
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 46, 46, 46)),
                          ),
                          10.heightBox,
                          DoctorDetailed(
                            icon: Icons.medical_information_outlined,
                            text: "Cardiac Surgery",
                          ),
                          10.heightBox,
                          DoctorDetailed(
                            icon: Icons.school_outlined,
                            text: "Diplomate, M.B.B.S",
                          ),
                          10.heightBox,
                          DoctorDetailed(
                            icon: Icons.location_on_outlined,
                            text: "Mumbai ",
                          ),
                          10.heightBox,
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(50),
                                  right: Radius.circular(50),
                                ),
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Text(
                                "Book Appointment",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ).pSymmetric(h: 30, v: 10),
                            ),
                          ),
                        ],
                      ).pOnly(left: s.width < 1024 ? 10 : 100),
                    ),
                  ),
                  s.width < 1024
                      ? Container()
                      : Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.transparent,
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                100.heightBox,
                                DoctorDetailed(
                                  icon: Icons.calendar_today_outlined,
                                  text: 'Mon - Sat',
                                ),
                                DoctorDetailed(icon: Icons.access_time_outlined, text: ' 7 AM - 9 PM '),
                                DoctorDetailed(
                                  icon: Icons.currency_rupee_rounded,
                                  text: '500',
                                ),
                                DoctorDetailed(
                                  icon: Icons.work_history_outlined,
                                  text: '10',
                                ),
                                DoctorDetailed(
                                  icon: Icons.language_outlined,
                                  text: 'English, Hindi, Gujarati',
                                ),
                                50.heightBox
                              ],
                            ),
                          ).pOnly(right: 100),
                        ),
                ],
              ),
            ),
            s.width < 1024
                ? Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DoctorDetailed(
                          icon: Icons.calendar_today_outlined,
                          text: 'Mon - Sat',
                        ),
                        DoctorDetailed(icon: Icons.access_time_outlined, text: ' 7 AM - 9 PM '),
                        DoctorDetailed(
                          icon: Icons.currency_rupee_rounded,
                          text: '500',
                        ),
                        DoctorDetailed(
                          icon: Icons.work_history_outlined,
                          text: '10',
                        ),
                        DoctorDetailed(
                          icon: Icons.language_outlined,
                          text: 'English, Hindi, Gujarati',
                        ),
                      ],
                    ),
                  ).pOnly(top: 20)
                : Container(),
            20.heightBox,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: Color.fromARGB(255, 246, 246, 246),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade500, spreadRadius: 1, blurRadius: 3),
                ],
              ),
              width: double.infinity,
              child: Column(
                children: [
                  10.heightBox,
                  Text(
                    "BIOGRAPHY",
                    style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  10.heightBox,
                  Text(
                    "Dr. Aafreen Siddique is a gold medallist in MD Anaesthesiology from the DY Patil Medical College. She has completed post-doctoral fellowships in onco-anaesthesia and chronic cancer pain from prestigious Tata memorial hospital. She has also done Diploma in anaesthesiology from Saifee hospital.",
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, height: 2),
                    textAlign: TextAlign.start,
                  ).px32(),
                  10.heightBox,
                ],
              ),
            ).px20(),
            20.heightBox,
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "SPECIALTY",
                    style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  10.heightBox,
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      5,
                      (index) => Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "specialty",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}

class DoctorDetailed extends StatelessWidget {
  final IconData? icon;
  final String text;
  const DoctorDetailed({
    super.key,
    this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 22,
          ),
          10.widthBox,
          Text(
            overflow: TextOverflow.ellipsis,
            text,
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
