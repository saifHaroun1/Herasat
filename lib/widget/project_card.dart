import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/widget/more_button.dart';
import 'package:provider/provider.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    Key? key,
    this.banner,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Card for the image only
        InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          onHover: (isHovering) {
            setState(() {
              isHover = isHovering;
            });
          },
          child: Container(
            width: 75.w,
            height: 250.h,
            decoration: BoxDecoration(
              color: appProvider.isDark ? Colors.grey[900] : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        color: AppTheme.c!.primary!.withAlpha(100),
                        blurRadius: 8.0,
                        offset: const Offset(0.0, 4.0),
                      )
                    ]
                  : [
                      BoxShadow(
                        color: Colors.black.withAlpha(50),
                        blurRadius: 4.0,
                        offset: const Offset(0.0, 2.0),
                      )
                    ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: widget.banner != null
                  ? Image.asset(
                      widget.banner!,
                      fit: BoxFit.cover,
                    )
                  : Container(),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        // Title and description below the card
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.projectTitle,
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff515151),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: 80.w, // Same width as the image card
              child: Text(
                widget.projectDescription,
                style: TextStyle(
                  fontSize: 5.sp,
                  color:
                      appProvider.isDark ? Colors.grey[300] : Colors.grey[700],
                ),
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 40.w,
                ),
                MoreButton(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
