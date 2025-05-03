import 'package:flutter/material.dart';

import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    grayTheme: Color(0xff666D75),
    shadowSub: const Color(0xffdd2726).withAlpha(100),
    primary: const Color(0xffdd2726),
    primaryDark: const Color(0xFF800000),
    primaryLight: const Color(0xFFff0000),
    textSub: const Color(0xff141414),
    textSub2: const Color.fromARGB(255, 44, 44, 44),
    text: Colors.white,
  );

  static AppCoreTheme light = _core.copyWith(
    background: Colors.white,
    backgroundSub: const Color(0xfffeccca),
    scaffold: const Color(0xfffefefe),
    scaffoldDark: const Color(0xfffcfcfc),
    text: Colors.white,
    textSub2: const Color(0xFF123E59),
    primaryDark: const Color(0xFF800000),
    primaryLight: const Color(0xFFff0000),
  );

  static AppCoreTheme dark = _core.copyWith(
    background: Colors.grey[900],
    primaryDark: const Color(0xFF800000),
    primaryLight: const Color(0xFFff0000),
    backgroundSub: const Color(0xff1c1c1e),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.white.withOpacity(0.25),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
