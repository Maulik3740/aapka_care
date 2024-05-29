import 'package:flutter/material.dart';
import 'package:fuerteads/screens/Profile%20Page/profile_mobile.dart';
import 'package:fuerteads/responsive.dart';
import 'package:fuerteads/screens/Profile%20Page/profile_web.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Responsive(mobile: ProfileMobile(), tablet: ProfileWeb(), desktop: ProfileWeb()));
  }
}
