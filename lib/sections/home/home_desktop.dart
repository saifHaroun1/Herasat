import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/sections/main/widgets/custom_button.dart';
import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> sliderData = [
      {
        "image": "assets/photos/bg1.png",
        "title": "${getLang(context, "title")}",
        "subtitle": "${getLang(context, "subtitle")}",
        "description": "${getLang(context, "description")}",
      },
      {
        "image": "assets/photos/bg2.png",
        "title": "${getLang(context, "title")}",
        "subtitle": "${getLang(context, "subtitle")}",
        "description": "${getLang(context, "description")}",
      },
      {
        "image": "assets/photos/bg3.png",
        "title": "${getLang(context, "title")}",
        "subtitle": "${getLang(context, "subtitle")}",
        "description": "${getLang(context, "description")}",
      },
    ];
    final appProvider = Provider.of<AppProvider>(context);
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.025,
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: sliderData.length,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemBuilder: (context, index) {
              final data = sliderData[index];
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    data["image"]!,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.topCenter,
                        colors: [
                          appProvider.isDark
                              ? Colors.black.withOpacity(0.1)
                              : Colors.white.withOpacity(0.0),
                          appProvider.isDark
                              ? Colors.black.withOpacity(0.6)
                              : Colors.white.withOpacity(0.0),
                          appProvider.isDark ? Colors.black : Colors.white,
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 100.h,
                  //   left: 0.w,
                  //   child: EntranceFader(
                  //     offset: const Offset(0, 0),
                  //     delay: const Duration(seconds: 1),
                  //     duration: const Duration(milliseconds: 800),
                  //     child: Image.asset(
                  //       StaticUtils.wht,
                  //       width: 200.w,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      AppDimensions.normalize(30),
                      AppDimensions.normalize(40),
                      30.w,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Space.y1!,
                        Text(
                          data["title"]!,
                          style: AppText.h1b!.copyWith(
                            fontFamily: 'stc',
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          data["subtitle"]!,
                          style: AppText.h1b!.copyWith(
                            fontSize: 16.sp,
                            fontFamily: 'stc',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          data["description"]!,
                          style: AppText.b1!.copyWith(
                            color: Colors.white,
                            fontSize: 7.sp,
                            fontFamily: 'stc',
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomButton(
                          color: Color(0xFF3E2026),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          // Previous Button
          Positioned(
            left: 10.w,
            top: size.height / 2 - 25.h,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: Colors.white, size: 30),
              onPressed: () {
                if (_currentIndex > 0) {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),

          // Next Button
          Positioned(
            right: 10.w,
            top: size.height / 2 - 25.h,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
                  color: Colors.white, size: 30),
              onPressed: () {
                if (_currentIndex < sliderData.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),

          // Page Indicator Dots
          Positioned(
            bottom: 40.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                sliderData.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  width: _currentIndex == index ? 16 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? AppTheme.c!.primary
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
