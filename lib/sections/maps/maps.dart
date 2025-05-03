import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/sections/maps/widgets/text_form.dart';

class MapsContact extends StatelessWidget {
  const MapsContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100.w,
      // height: 200.h,
      color: Colors.grey[400]!.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ContactInputFeild(
                    inputController: TextEditingController(),
                    title: 'الاسم',
                    hint: 'الاسم'),
                SizedBox(
                  height: 4.h,
                ),
                ContactInputFeild(
                    inputController: TextEditingController(),
                    title: 'البريد الالكتروني',
                    hint: 'البريد الالكتروني'),
                SizedBox(
                  height: 4.h,
                ),
                ContactInputFeild(
                  inputController: TextEditingController(),
                  title: 'رسالتك',
                  hint: 'رسالتك',
                  maxLines: 5,
                ),
                SizedBox(
                  height: 8.h,
                ),

                // button to send the message
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.light.primary,
                    textStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // send the message
                  },
                  child: Text('ارسال', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Container(
            height: 550.h,
            width: 200.w,
            color: Colors.red,
            child: Image.asset(
              'assets/photos/maps.png',
              fit: BoxFit.cover,
              height: 300.h,
            ),
          ),
        ],
      ),
    );
  }
}
