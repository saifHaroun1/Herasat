import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/solution/contact_desktop.dart';
import 'package:folio/sections/solution/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactDesktop(),
      tablet: ContactDesktop(),
      desktop: ContactDesktop(),
    );
  }
}
