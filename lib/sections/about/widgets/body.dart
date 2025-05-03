import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:folio/configs/space.dart';

class AboutBody extends StatelessWidget {
  String body;
  String image;
  AboutBody({super.key, required this.body, required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100.w,
          padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                body,
                style: AppText.b2!.copyWith(
                    fontFamily: 'stc', fontSize: 4.sp, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              Space.y!,
            ],
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5),
            //     spreadRadius: 1,
            //     blurRadius: 7,
            //     offset: Offset(0, 3), // changes position of shadow
            //   ),
            // ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              fit: BoxFit.cover,
              image,
              height: 370.h,
              width: 80.w,
            ),
          ),
        ),
      ],
    );
  }
}
