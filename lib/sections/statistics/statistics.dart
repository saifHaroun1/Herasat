import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/widget/custom_text_heading.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/photos/stat_bg.jpg"),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      alignment: Alignment.center,
      // color: AppTheme.light.primary,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(6.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 80.w,
                  ),
                  CustomSectionHeading(
                    wordColors: [
                      Colors.white,
                      Colors.white,
                    ],
                    text: "${getLang(context, "Herasat_Network")}",
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomSectionHeading(wordColors: [
                  Colors.white,
                  Colors.white,
                ], text: "${getLang(context, "3500_Employee")}"),
                SizedBox(
                  width: 20.w,
                ),
                CustomSectionHeading(wordColors: [
                  Colors.white,
                  Colors.white,
                ], text: "${getLang(context, "750_Locations")}"),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
