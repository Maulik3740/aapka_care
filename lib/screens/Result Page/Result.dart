import 'package:flutter/material.dart';
import 'package:fuerteads/responsive.dart';
import 'package:fuerteads/screens/Result%20Page/result_mobile.dart';
import 'package:fuerteads/screens/Result%20Page/result_web.dart';

class Result extends StatelessWidget {
  final String experience;
  final String location;

  const Result({super.key, required this.experience, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: ResultMobile(
          experience: experience,
          location: location,
        ),
        tablet: ResultMobile(
          experience: experience,
          location: location,
        ),
        desktop: ResultWeb(
          experience: experience,
          location: location,
        ),
      ),
    );
  }
}
