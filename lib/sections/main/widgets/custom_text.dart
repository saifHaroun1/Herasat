import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/app_theme.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.c!.grayTheme!,
        border: Border.all(width: 1, color: color),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 8.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
