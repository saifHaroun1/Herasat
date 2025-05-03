import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      "assets/photos/features1.jpg",
      "assets/photos/features2.jpg",
      "assets/photos/features3.jpg",
      // "assets/photos/covidB.png",
    ];

    final List<String> titles = [
      "${getLang(context, "Security_And_Guarding")}",
      "${getLang(context, "Personal_Guarding")}",
      "${getLang(context, "Security_for_Events")}",
    ];

    final List<String> description = [
      "${getLang(context, "Service_Description")}",
      "${getLang(context, "Personal_Guarding_Description")}",
      "${getLang(context, "Events_Description")}",
    ];

    return Container(
      height: 1000.h,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 50.w),
      child: Column(
        children: [
          CustomSectionHeading(
            wordColors: [Color(0xff616161), Color(0xffCA0538)],
            text: "${getLang(context, "Our_Services")}",
          ),
          SizedBox(height: 50.h),
          // Horizontal row of cards
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < banners.length; i++)
                ProjectCard(
                  banner: banners[i],
                  projectTitle: titles[i],
                  projectDescription: description[i],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
