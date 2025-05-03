import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:folio/main.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:provider/provider.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;
  final List<Color>? wordColors;

  const CustomSectionHeading({
    Key? key,
    required this.text,
    this.wordColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> parts = text.trim().split(' ');

    // لو المستخدم ما حطش ألوان، استخدم الأبيض كقيمة افتراضية
    List<Color> defaultColors = List.generate(
      parts.length,
      (_) => Colors.white,
    );

    List<Color> colors = wordColors ?? defaultColors;

    return RichText(
      text: TextSpan(
        style: AppText.h2b!.copyWith(
          fontFamily: 'stc',
          fontSize: 8.sp,
        ),
        children: List.generate(parts.length, (index) {
          return TextSpan(
            text: "${parts[index]} ",
            style: TextStyle(color: colors[index]),
          );
        }),
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;
  Color? color;

  CustomSectionSubHeading({Key? key, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.b1b!.copyWith(color: Colors.black, fontSize: 4.sp),
    );
  }
}
