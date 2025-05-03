import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';

class MoreButton extends StatelessWidget {
  final Color? backgroundColor;

  const MoreButton({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: backgroundColor ??
              const Color(0xFFF2F2F2), // لو null استخدم الافتراضي
          border: Border.all(
            color: const Color(0xFFFF9591).withOpacity(0.5),
            width: 0.4.w,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${getLang(context, "More")}",
              style: TextStyle(
                color: const Color(0xFFDA1A47),
                fontSize: 4.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 2.w),
            Icon(
              Icons.north_east,
              color: Colors.white,
              size: 6.sp,
            ),
          ],
        ),
      ),
    );
  }
}
