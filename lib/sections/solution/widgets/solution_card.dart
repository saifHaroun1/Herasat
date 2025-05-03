import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:folio/configs/space.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:provider/provider.dart';

class SolutionCard extends StatefulWidget {
  final String solutionImage;
  final String solutionTitle;
  final String solutionDescription;

  const SolutionCard({
    Key? key,
    required this.solutionImage,
    required this.solutionTitle,
    required this.solutionDescription,
  }) : super(key: key);

  @override
  _SolutionCardState createState() => _SolutionCardState();
}

class _SolutionCardState extends State<SolutionCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: 60.w,
        height: 400.h,
        decoration: BoxDecoration(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppTheme.c!.primary!.withAlpha(100),
                    blurRadius: 4.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 4.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  fit: BoxFit.cover,
                  widget.solutionImage,
                  height: AppDimensions.normalize(30),
                ),
              ),
            ),
            Space.y1!,
            Text(
              widget.solutionTitle,
              textAlign: TextAlign.center,
              style: AppText.b1b!.copyWith(
                  color: AppTheme.light.primary,
                  fontFamily: 'stc',
                  fontSize: 6.sp),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.w),
                child: Text(
                  widget.solutionDescription,
                  style: AppText.l1!.copyWith(
                    color: Colors.grey[400],
                    fontFamily: 'stc',
                    fontSize: 3.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
