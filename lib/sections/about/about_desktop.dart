import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/sections/about/widgets/body.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/more_button.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String firstDetail = "${getLang(context, "Security_Description")}";
    return Container(
      color: Color(0xff858A91),
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 75.w,
              ),
              CustomSectionHeading(
                text: "${getLang(context, "Concept_of_Security_and_Guarding")}",
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          SizedBox(
            height: 500.h,
            child: AboutBody(
              body: firstDetail,
              image: StaticUtils.bg6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MoreButton(
                  backgroundColor: Color(0xff858A91),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
