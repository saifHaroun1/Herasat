import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/iframe/htmlview.dart';
import 'package:folio/sections/iframe/iframe.dart';
import 'package:folio/sections/maps/maps.dart';
import 'package:folio/sections/news/news.dart';
import 'package:folio/sections/solution/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/sections/statistics/statistics.dart';
import 'package:folio/sections/varius_applications/varius_applications.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  // for about
  static const String mainficture = 'assets/photos/features2.jpg';
  static const String photo1 = 'assets/photos/Picture1.png';
  static const String photo2 = 'assets/photos/Picture2.png';
  static const String photo3 = 'assets/photos/Picture3.png';
  static const String photo4 = 'assets/photos/Picture4.png';
  static const String photo5 = 'assets/photos/Picture5.png';
  static const String photo51 = 'assets/photos/Picture51.png';
  static const String photo7 = 'assets/photos/Picture7.png';
  static const String photo8 = 'assets/photos/Picture8.png';

  static const String backgroundPhoto = 'assets/photos/background.png';
  static const String earth = 'assets/photos/earth2.png';
  static const String bgGradiant = 'assets/photos/bg_gradiant.png';
  static const String wht = 'assets/photos/wht.png';

  // work
  static const String bg6 = 'assets/photos/bg6.jpg';
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String shot = 'assets/photos/shot.png';
  static const String calender = 'assets/photos/calender.png';
  static const String analysis = 'assets/photos/analysis.png';
  static const String pc = 'assets/photos/pc.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';
}

class BodyUtils {
  static List<Widget> views = [
    HomePage(),
    WaterChallengesText(),
    Portfolio(),
    Contact(),

    // Services(),
    // IframeScreen(),
    // Iframe(),
    About(),
    StatisticsSection(),
    // VariusApplications(),
    // MapsContact(),
    Footer(),
  ];
}
