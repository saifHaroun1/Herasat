import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  _ContactDesktopState createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  // قائمة الألوان المخصصة لكل حاوية
  final List<Color> containerColors = [
    Color(0xffCA0538), // لون أول حاوية (أحمر)
    Color(0xff9E9E9E), // لون ثاني حاوية (رمادي)
    Color(0xff9E9E9E), // لون ثالث حاوية (رمادي)
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> solutionImagesPage1 = [
      "assets/photos/prof.png",
      "assets/photos/quality.png",
      "assets/photos/integrety.png",
    ];

    final List<String> solutionTitlesPage1 = [
      "${getLang(context, "Professionalism")}",
      "${getLang(context, "Quality")}",
      "${getLang(context, "Integrity")}",
    ];

    final List<String> solutionDescriptionPage1 = [
      "Demonstrating confidence, discipline, and attention to detail—hallmarks of professional security service that builds client trust from the very first interaction.",
      "Utilizing advanced technology and well-trained personnel to deliver top-tier security operations that exceed industry standards.",
      "Acting with honesty, reliability, and a strong sense of duty—ensuring safety while upholding the values of ethical service."
    ];

    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      color: Color(0xFFF0F0F1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70.h),
            CustomSectionHeading(
              wordColors: [
                Color(0xff616161),
                Color(0xffCA0538),
              ],
              text: "${getLang(context, "Our_Mission")}",
            ),
            SizedBox(height: 20.h),
            CustomSectionSubHeading(
              text: "${getLang(context, "Mission_Description")}",
            ),
            SizedBox(height: 40.h),
            // Display only the titles in a column with fixed size containers
            Row(
              children: [
                SizedBox(
                  width: 70.w,
                ),
                Container(
                  width: 150.w,
                  height: 360.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/photos/bg5.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < solutionTitlesPage1.length; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Container(
                          width: 50.w, // Fixed width
                          height: 110.h, // Fixed height
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: containerColors[
                                i], // استخدام اللون المخصص من القائمة
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              )
                            ],
                          ),
                          child: Text(
                            solutionTitlesPage1[i],
                            style: TextStyle(
                              fontSize: 4.sp, // زيادة حجم الخط قليلاً
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
