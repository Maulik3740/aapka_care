import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuerteads/screens/Home%20Page/Home.dart';
import 'package:fuerteads/screens/Profile%20Page/Profile.dart';
import 'package:fuerteads/screens/Result%20Page/result_web.dart';
import 'package:fuerteads/screens/SubScription-Plan/sp.dart';
import 'package:fuerteads/screens/findPatient.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultMobile extends StatefulWidget {
  final String experience;
  final String location;
  const ResultMobile({super.key, required this.experience, required this.location});

  @override
  State<ResultMobile> createState() => _ResultMobileState();
}

class _ResultMobileState extends State<ResultMobile> {
  final String mobile = "9724******";
  RangeValues _values = RangeValues(0.0, 10000.0);

  List<Map<String, dynamic>> jobDataList = [
    {
      "jobTitle": "Orr Wilkinson",
      "phone": "9104963708",
      "address": "663 Dewitt Avenue, Catherine, Colorado, 5739",
      "iconData": Icons.work,
      "Image": "assets/n1.png",
      "experience": "3 Year",
      "containerColor": Color.fromARGB(255, 207, 247, 115),
    },
    {
      "jobTitle": "Baxter Perkins",
      "phone": "9104963708",
      "address": "314 Harrison Place, Chalfant, Marshall Islands, 7954",
      "iconData": Icons.work,
      "Image": "assets/d1.png",
      "experience": "3 Year",
      "containerColor": Color.fromARGB(255, 129, 251, 219),
    },
    {
      "jobTitle": "Ruthie Goodman",
      "phone": "9104963708",
      "address": "604 Vermont Court, Sunriver, Minnesota, 627",
      "Image": "assets/d2.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(255, 247, 146, 224), // Example color
    },
    {
      "jobTitle": "Ruthie Goodman",
      "phone": "9104963708",
      "address": "604 Vermont Court, Sunriver, Minnesota, 627",
      "Image": "assets/n3.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(255, 175, 154, 244), // Example color
    },
    {
      "jobTitle": "Sherri Velazquez",
      "phone": "9104963708",
      "address": "343 Dahl Court, Axis, Connecticut, 7932",
      "Image": "assets/d4.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(255, 250, 197, 153), // Example color
    },
    {
      "jobTitle": "Lori Wilcox",
      "phone": "9104963708",
      "address": "607 Williams Avenue, Gratton, Idaho, 1772",
      "Image": "assets/d5.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(255, 116, 238, 238), // Example color
    },
    {
      "jobTitle": "Irene Cain",
      "phone": "9104963708",
      "address": "647 India Street, Brewster, Massachusetts, 906",
      "Image": "assets/d6.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(255, 106, 201, 245), // Example color
    },
    {
      "jobTitle": "Arlene Nicholson",
      "phone": "9104963708",
      "address": "781 Ralph Avenue, Hoehne, West Virginia, 1870",
      "Image": "assets/d7.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(255, 249, 124, 124), // Example color
    },
    {
      "jobTitle": "Arlene Nicholson",
      "phone": "9104963708",
      "address": "781 Ralph Avenue, Hoehne, West Virginia, 1870",
      "Image": "assets/n2.png", "experience": "3 Year",

      "containerColor": Color.fromARGB(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 124), // Example color
    },
  ];

  startLaunchURL(String url) async {
    // const url = 'https://flutter.dev';

    var urllaunchable = await canLaunchUrl(Uri.parse(url)); //canLaunch is from url_launcher package
    if (urllaunchable) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication); //launch is from url_launcher package to launch URL
    } else {
      print("URL can't be launched.");
    }
  }

  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    // final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Color(0xfff4f9fe),
      // backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0 * s.customHeight),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 27, 181, 253),
          scrolledUnderElevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: 150,
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    ImagePath.adsLogo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 20 * s.customWidth,
              ),
              Text(
                "",
                style: GoogleFonts.play(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                startLaunchURL("https://play.google.com/store/apps/details?id=com.fuertedevelopers.aapkacare&hl=en&gl=US");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 30, top: 7),
                child: Container(
                  width: 100,
                  child: Image.asset(
                    'assets/images/google_play.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: s.height * 1.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10 * s.customHeight,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: s.width,
                    decoration: BoxDecoration(color: Color.fromRGBO(249, 249, 249, 1), border: Border.all(color: Color.fromARGB(42, 0, 0, 0)), borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10 * s.customHeight,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20 * s.customWidth, right: 5 * s.customWidth),
                              child: FaIcon(Icons.search_outlined),
                            ),
                            Expanded(
                              child: Container(
                                width: 100,
                                child: AutoSizeText(
                                  widget.experience, //"Driving Jobs",
                                  style: GoogleFonts.poppins(fontSize: 15, color: black),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20 * s.customWidth,
                            ),
                            SizedBox(
                              height: 30 * s.customHeight,
                              child: VerticalDivider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                            ),
                            SizedBox(
                              width: 40 * s.customWidth,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(
                                Icons.bus_alert,
                                color: red,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.amber,
                                constraints: BoxConstraints(maxWidth: 250),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: AutoSizeText(
                                    overflow: TextOverflow.ellipsis,
                                    widget.location,
                                    style: GoogleFonts.poppins(fontSize: 15, color: black),
                                  ),
                                ),
                              ).pOnly(right: 20 * s.customWidth),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10 * s.customHeight,
                        ),
                        Row(
                          children: [
                            widget.experience == "Doctor" || widget.experience == "Nursing"
                                ? Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey.shade400),
                                      ),
                                      child: buildCustomDropdownForm(
                                          items: [
                                            "1 Year",
                                            "2 Year",
                                            "3 Year",
                                            "4 Year",
                                            "5 Year",
                                            "6 Year",
                                            "7 Year",
                                            "8 Year",
                                            "9 Year",
                                            "10 Year",
                                            "11 Year",
                                            "12 Year",
                                            "13 Year",
                                            "14 Year",
                                            "15 Year",
                                            "16 Year",
                                            "17 Year",
                                            "18 Year",
                                            "19 Year",
                                            "20 Year",
                                            "21 Year",
                                            "22 Year",
                                            "23 Year",
                                            "24 Year",
                                            "25 Year",
                                          ],
                                          onChanged: (String? value) {
                                            print("object..................................$value");
                                          }),
                                    ),
                                  )
                                : Container(),
                          ],
                        ).pOnly(right: 20 * s.customWidth, left: 20 * s.customWidth),
                        SizedBox(
                          height: widget.experience == "Nursing" || widget.experience == "Doctor" ? 10 : 0 * s.customHeight,
                        ),
                        Row(
                          children: [
                            widget.experience == "Nursing" || widget.experience == "Doctor"
                                ? Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\₹${_values.start.round()}",
                                              style: GoogleFonts.poppins(fontSize: 12, color: black, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              " Doctor Fees",
                                              style: GoogleFonts.poppins(color: black, fontSize: 14, fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              "\₹${_values.end.round()}",
                                              style: GoogleFonts.poppins(fontSize: 12, color: black, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        RangeSlider(
                                          values: _values,
                                          activeColor: Color.fromARGB(255, 27, 181, 253),
                                          onChanged: (values) {
                                            setState(() {
                                              _values = values;
                                            });
                                          },
                                          min: 0.0,
                                          max: 10000.0,
                                          divisions: 100,
                                        ).h(30),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ).pOnly(right: 20 * s.customWidth, left: 20 * s.customWidth),
                        SizedBox(
                          height: widget.experience == "Nursing" || widget.experience == "Doctor" ? 10 : 0 * s.customHeight,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => FindPatient()),
                                  );
                                },
                                child: Container(
                                  height: 42 * s.customHeight,
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 27, 181, 253), borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Icon(
                                          Icons.search_sharp,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "Find Doctor",
                                        style: GoogleFonts.aBeeZee(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20 * s.customWidth,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => FindPatient()),
                                  );
                                },
                                child: Container(
                                  height: 42 * s.customHeight,
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 27, 181, 253), borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Icon(
                                          Icons.search_sharp,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "Search",
                                        style: GoogleFonts.aBeeZee(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ).pOnly(right: 20 * s.customWidth, left: 20 * s.customWidth),
                        SizedBox(
                          height: 10 * s.customHeight,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20 * s.customHeight,
              ),
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.end,
              //       children: [
              //         Text(
              //           "Filters",
              //           style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              //         ),
              //         10.widthBox,
              //         Expanded(
              //           child: Container(
              //             color: Colors.transparent,
              //             width: double.infinity,
              //           ),
              //         ),
              //         Text(
              //           "Clear All",
              //           style: GoogleFonts.aBeeZee(color: grey, fontWeight: FontWeight.bold, fontSize: 14),
              //         ),
              //       ],
              //     ).pOnly(right: 20 * s.customWidth, left: 20 * s.customWidth),
              //     SizedBox(
              //       height: 10 * s.customHeight,
              //     ),
              //     Row(
              //       children: [
              //         SizedBox(
              //           width: 20 * s.customWidth,
              //         ),
              //         Expanded(
              //           child: Container(
              //             constraints: BoxConstraints(maxHeight: 250),
              //             decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
              //             child: SingleChildScrollView(
              //               scrollDirection: Axis.vertical,
              //               child: Column(
              //                 children: [
              //                   DropdownWidget(
              //                     name: "Profession",
              //                     items: [
              //                       "Cardiologist",
              //                       "Dermatologist",
              //                       "Pediatricians",
              //                       "Gynecologist",
              //                       "Gastroenterologist",
              //                       "Pathology",
              //                     ],
              //                   ),
              //                   Divider(
              //                     color: Colors.grey.shade500,
              //                   ).px16(),
              //                   DropdownWidget(
              //                     name: "Experience",
              //                     items: [
              //                       "1 - 5 Years",
              //                       "6 - 10 Years",
              //                       "11 - 15 years",
              //                       "16 - 20 years",
              //                       "21 - 25 years"
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 20 * s.customWidth,
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20 * s.customHeight,
              // ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.experience,
                              style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            10.widthBox,
                            Expanded(
                              child: Container(
                                color: Colors.transparent,
                                width: double.infinity,
                              ),
                            ),
                            Text(
                              "Search Result (05)",
                              style: GoogleFonts.aBeeZee(color: grey, fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10 * s.customHeight,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              // color: Colors.amber,
                              width: double.infinity,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  int numberOfColumns = (constraints.maxWidth < 800 ? (s.width < 600 ? 2 : 3) : 4);
                                  int numberOfRows = (jobDataList.length / numberOfColumns).ceil(); //jobData.length  = at 10
                                  return Column(
                                    children: List.generate(numberOfRows, (index) {
                                      return Row(
                                        children: List.generate(numberOfColumns, (columnIndex) {
                                          int dataIndex = index * numberOfColumns + columnIndex;
                                          if (dataIndex < jobDataList.length) {
                                            var jobData = jobDataList[dataIndex];

                                            return Expanded(
                                              child: CustomJobContainer(
                                                containerColor: jobData['containerColor'],
                                                onDetailsTap: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) => widget.experience == "Patient" ? SubscriptionPlan() : Profile(),
                                                    ),
                                                  );
                                                },
                                                jobTitle: jobData['jobTitle'],
                                                mobile: widget.experience == "Patient" ? mobile : jobData['phone'],
                                                address: jobData['address'],
                                                experience: widget.experience == "Doctor" || widget.experience == "Nursing" ? jobData['experience'] : '',
                                                imageUrl: jobData['Image'],
                                              ).pOnly(right: 20, bottom: 20),
                                            );
                                          } else {
                                            return Expanded(child: SizedBox());
                                          }
                                        }),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomDropdownForm({
    required List<String> items,
    // required String dropdownValue,
    required ValueChanged<String?> onChanged,
  }) {
    return Theme(
      data: ThemeData(focusColor: Colors.lightBlue),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.work_history,
            color: green,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.transparent,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.transparent,
          )),
          filled: true,
          fillColor: Colors.transparent,
          hintText: "Experience",
          hintStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
          // border: OutlineInputBorder(),
        ),
        // value: dropdownValue,
        items: items.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                item,
                style: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
              ).pOnly(top: 4),
            ),
          );
        }).toList(),
        onChanged: onChanged,
        iconSize: 30,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
          // size: 30,
        ).pOnly(top: 2),
        dropdownColor: Color.fromARGB(213, 242, 242, 242),
      ),
    );
  }
}

class DropdownWidget extends StatefulWidget {
  final String name;
  final List<String> items;

  DropdownWidget({required this.items, required this.name});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  bool _showDropdown = false;
  List<bool> isCheckedList = [];

  @override
  void initState() {
    super.initState();
    isCheckedList = List<bool>.filled(widget.items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _showDropdown = !_showDropdown;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 16),
              ).pOnly(left: 5),
              Icon(
                _showDropdown ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30,
              ).pOnly(top: 5),
            ],
          ).pSymmetric(h: 12, v: 5),
        ),
        Visibility(
          visible: _showDropdown,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: widget.items.asMap().entries.map((entry) {
                int index = entry.key;
                String item = entry.value;
                return InkWell(
                  onTap: () {
                    setState(() {
                      isCheckedList[index] = !isCheckedList[index];
                    });
                  },
                  child: Container(
                    // color: Colors.amber,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Transform.scale(
                        scale: 0.8,
                        child: Checkbox(
                          activeColor: Colors.blue,
                          value: isCheckedList[index],
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedList[index] = value ?? false;
                            });
                          },
                        ),
                      ),
                      title: Text(item, style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600)),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
