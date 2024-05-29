import 'package:flutter/material.dart';
import 'package:fuerteads/screens/Home%20Page/home_mobile.dart';
import 'package:fuerteads/screens/Home%20Page/home_web.dart';
import 'package:fuerteads/responsive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Responsive(mobile: HomeMobile(), tablet: HomeMobile(), desktop: HomeWeb()));
  }
}
