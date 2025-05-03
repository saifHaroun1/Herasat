import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/widget/icon_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: AppTheme.c!.grayTheme!,
      padding: EdgeInsets.all(12),
      height: 600.h,
      width: width,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    "${getLang(context, "follow_us")}",
                    style: TextStyle(fontSize: 6.sp, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SocialIconCircle(
                        iconData: FontAwesomeIcons.facebookF,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      SocialIconCircle(
                        iconData: FontAwesomeIcons.google,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      SocialIconCircle(
                        iconData: FontAwesomeIcons.instagram,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      SocialIconCircle(
                        iconData: FontAwesomeIcons.youtube,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                children: [
                  Text(
                    "${getLang(context, "Lets_chat")}",
                    style: TextStyle(fontSize: 6.sp, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SocialIconCircle(iconData: FontAwesomeIcons.viber),
                      SizedBox(
                        width: 1.w,
                      ),
                      SocialIconCircle(iconData: FontAwesomeIcons.telegram),
                      SizedBox(
                        width: 1.w,
                      ),
                      SocialIconCircle(iconData: FontAwesomeIcons.whatsapp),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 20.w,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                width: 60.w,
                height: 130.h,
                "assets/photos/heresat.png",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getLang(context, "Call_us")}",
                    style: TextStyle(
                        fontSize: 6.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "${getLang(context, "Address")}",
                    style: TextStyle(
                        fontSize: 5.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "${getLang(context, "Full_Address")}",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "${getLang(context, "Contact_us")}",
                    style: TextStyle(
                        fontSize: 5.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "${getLang(context, "Email_and_HeadOffice")}",
                    style: TextStyle(
                        fontSize: 4.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
