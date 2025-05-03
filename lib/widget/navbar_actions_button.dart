import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/main.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import for URL launching

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    var appProvider = Provider.of<AppProvider>(context);

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        width: 45.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: MaterialButton(
            splashColor: Colors.white54,
            highlightColor: Colors.white54,
            hoverColor: AppTheme.c!.primary!.withOpacity(0.1),
            onPressed: () {
              switch (index) {
                case 0:
                  scrollProvider.scroll(0);
                  break;
                case 1:
                  scrollProvider.scroll(1);
                  break;
                case 2:
                  scrollProvider.scroll(2);
                  break;
                case 3:
                  scrollProvider.scroll(3);
                  break;
                case 4:
                  scrollProvider.scroll(4);
                  break;
                case 5:
                  Locale newLocale =
                      Localizations.localeOf(context).languageCode == 'en'
                          ? const Locale('ar', 'SA')
                          : const Locale('en', 'US');

                  MyApp.setLocale(context, newLocale);
                  break;
              }
            },
            child: Padding(
              padding: Space.all(0.2, 0.2),
              child: Text(
                label,
                style: AppText.b2b!.copyWith(
                  fontSize: 3.sp,
                  color: Colors.grey[800],
                  fontFamily: 'stc',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
