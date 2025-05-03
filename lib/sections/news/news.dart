import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/sections/main/widgets/custom_button.dart';
import 'package:folio/sections/main/widgets/custom_image.dart';
import 'package:folio/sections/main/widgets/custom_text.dart';

class WaterChallengesText extends StatefulWidget {
  const WaterChallengesText({Key? key}) : super(key: key);
  @override
  _WaterChallengesTextState createState() => _WaterChallengesTextState();
}

class _WaterChallengesTextState extends State<WaterChallengesText> {
  String selectedButton = "about_us";

  void selectButton(String buttonKey) {
    setState(() {
      selectedButton = buttonKey;
    });
  }
  // bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    AppTheme.init(context);
    return Container(
      height: 600.h,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppTheme.c!.grayTheme!, AppTheme.c!.grayTheme!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SizedBox(
          // width: 100.w,
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 315),
            child: Row(
              children: [
                Text(
                  "${getLang(context, selectedButton)}",
                  style: TextStyle(fontSize: 11.sp, color: Colors.white),
                ),
                SizedBox(
                  width: 3.w,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => selectButton("Why_Us"),
                      borderRadius: BorderRadius.circular(14),
                      child: CustomText(
                        color: selectedButton == "Why_Us"
                            ? Color(0xffFF0000)
                            : Color(0xff666D75),
                        title: "${getLang(context, "Why_Us")}",
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => selectButton("Our_Team"),
                      borderRadius: BorderRadius.circular(14),
                      child: CustomText(
                        color: selectedButton == "Our_Team"
                            ? Color(0xffFF0000)
                            : Color(0xff666D75),
                        title: "${getLang(context, "Our_Team")}",
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => selectButton("about_us"),
                      borderRadius: BorderRadius.circular(14),
                      child: CustomText(
                        color: selectedButton == "about_us"
                            ? Color(0xffFF0000)
                            : Color(0xff666D75),
                        title: "${getLang(context, "about_us")}",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 40.w,
              ),
              CustomImage(),
              SizedBox(
                width: 40.w,
              ),
              Container(
                height: 300.h,
                width: 95.w,
                decoration: BoxDecoration(
                  color: Color(0xff666D75),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  selectedButton == "about_us"
                      ? "${getLang(context, "About_US")}"
                      : selectedButton == "Why_Us"
                          ? "${getLang(context, "Why_Us_Description")}"
                          : selectedButton == "Our_Team"
                              ? "${getLang(context, "Our_Team_Description")}"
                              : "",
                  style: TextStyle(fontSize: 4.sp, color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(color: AppTheme.c!.grayTheme!),
              SizedBox(
                width: 30.w,
              ),
            ],
          )
        ],
      )),
    );
  }
}
