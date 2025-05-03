import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: color.withAlpha(110),
            border: Border.all(width: 0.2.w, color: Color(0xFFFF9591)),
            borderRadius: BorderRadius.circular(20.h),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${getLang(context, "get_connected")}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 3.w,
              ),
              Icon(size: 4.sp, Icons.north_east)
            ],
          )),
    );
  }
}
