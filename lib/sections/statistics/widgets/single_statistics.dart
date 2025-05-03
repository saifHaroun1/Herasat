import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleStatistics extends StatelessWidget {
  final IconData icon;
  final String number;
  final String? unit;
  final String discrption;
  const SingleStatistics(
      {super.key,
      required this.icon,
      required this.number,
      this.unit,
      required this.discrption});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 6.sp,
              color: Colors.white,
            ),
            SizedBox(width: 2.w),
            Text(number,
                style: TextStyle(
                    fontSize: 5.sp,
                    color: Colors.green,
                    fontFamily: 'stc',
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 2.w),
            Text(unit ?? '%',
                style: TextStyle(
                    fontSize: 3.sp, color: Colors.green, fontFamily: 'stc'))
          ],
        ),
        Text(discrption,
            style: TextStyle(
                fontSize: 3.sp,
                color: Colors.white,
                fontFamily: 'stc',
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
