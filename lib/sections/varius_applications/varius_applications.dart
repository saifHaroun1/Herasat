import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:video_player/video_player.dart';

class VariusApplications extends StatefulWidget {
  const VariusApplications({Key? key}) : super(key: key);

  @override
  _VariusApplicationsState createState() => _VariusApplicationsState();
}

class _VariusApplicationsState extends State<VariusApplications> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      int newPage = _pageController.page!.round();
      if (_currentPage != newPage) {
        setState(() {
          _currentPage = newPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          const CustomSectionHeading(
            text: "تطبيقات متعددة",
          ),
          SizedBox(
            height: 50,
          ),
          // PageView with horizontal scrolling for multiple views
          SizedBox(
            height: 300.h,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                VideoView(
                  videoAsset: 'assets/videos/video3.mp4',
                  title: "تعيين أمر عمل لتسرب تم الإبلاغ عنه",
                  description: """
يبدأ هذا السيناريو بمرسل في المكتب يستخدم تطبيق ويب Workforce. يسمح تطبيق الويب للمرسل بعرض خريطة مع موقع أوامر عمل تسرب المياه. عادة ما يتم تسجيلها من قبل فريق عمليات العملاء. يمكن للمرسل أيضا عرض مكان وجود العاملين الميدانيين النشطين، والمهام التي تم تعيينها لكل منهم، وحالة كل مهمة. 
يتيح عرض وفهم كل هذه المعلومات في شاشة واحدة للمرسل تعيين أوامر عمل ناشئة جديدة بكفاءة للعامل الميداني المناسب من أجل التحقق من صحتها والتحقيق فيها. على سبيل المثال، يمكن أن يعتمد هذا على أقرب عامل إلى موقع أمر العمل أو ربما العامل الذي لديه أقل المهام المعينة.
بمجرد تعيين مهمة، يتم إعلام العامل الميداني الذي يستخدم تطبيق Workforce للأجهزة المحمولة على الفور. ثم يقبل العامل الميداني المهمة عندما يكون مستعدا لبدء العمل عليها. سيؤدي هذا إلى تحديث حالة المهمة إلى "قيد التقدم" والتي يمكن للمرسل عرضها على تطبيق الويب في الوقت الفعلي.

""",
                ),
                VideoView(
                  videoAsset: 'assets/videos/video4.mp4',
                  title: "التنقل بين العامل الميداني لتسريب الموقع",
                  description: """
بمجرد قبول العامل الميداني لمهمة التحقق من صحة التسرب، فإن أول شيء يجب فعله هو الانتقال إلى موقع أمر العمل. ضمن تطبيق Workforce للأجهزة المحمولة، يتوفر للعامل الميداني خيار فتح المهمة في تطبيقات Esri للأجهزة المحمولة الأخرى باستخدام زر بنقرة واحدة.
عند تحديد Navigator، سيتم فتح تطبيق الأجهزة المحمولة على الفور لعرض أفضل مسار للوصول إلى موقع أمر العمل. يمكن للعامل الميداني قبول المسار المقترح والبدء في التنقل أو إعادة تكوين إعدادات تحسين المسار. إذا كانت الطواقم الميدانية تستخدم أنواعا مختلفة من المركبات (سيارة أو شاحنة)، فيمكن تكوين ذلك في إعدادات تحسين المسار. أيضا ، تسمح لهم نفس الإعدادات بتحسين أفضل طريق باستخدام أسرع وقت أو أقصر مسافة.

""",
                ),
                VideoView(
                  videoAsset: 'assets/videos/video1.mp4',
                  title: "التحقق من صحة تقرير التسرب في الميدان",
                  description: """
الخيار الآخر المتاح داخل تطبيق Workforce للأجهزة المحمولة هو فتح المهمة في Collector لبدء التحقق من صحة التسرب. يتم تحديد هذا الخيار عند وصول العامل الميداني إلى موقع أمر العمل. عند تحديد هذا الخيار، يتم فتح Collector الذي يمكن العامل الميداني من تحرير جميع سمات التسرب التي تم تسجيلها في الأصل بواسطة مدير عمليات العميل والتحقق من صحتها.
من الممكن أيضا تغيير موقع التسرب في حالة عدم رسم التسرب في الموقع المحدد. يمكن للعامل الميداني تحرير موقعه في الخريطة ليتناسب مع موقعه الحقيقي في العالم. بمجرد انتهاء العامل الميداني من تحديث السمات، يمكنه التقاط صورة للتسرب أو تحميل أي مرفق ذي صلة.
بعد الانتهاء من التحقق من صحة التسرب والتحقيق فيه ، يحتاج العامل الميداني إلى إرسال جميع التعديلات لتحديث سجلات التسريب. بمجرد الإرسال، يحتاج العامل الميداني إلى تحديث حالة أمر العمل في Workforce إلى "مكتمل". سيؤدي هذا إلى إزالة المهمة من قائمة المهام الخاصة به وسيقوم بتحديث حالة المهمة على الفور في المكتب.
إلى جانب تحديث حالة أمر العمل، يحتفظ تطبيق ويب Workforce أيضا بسجل حول وقت اكتمال أمر العمل. وهذا يسمح لمرافق المياه بالإبلاغ عن الوقت اللازم لعمليات ميدانية معينة وفهم التأثير على عملائها.

""",
                ),
                VideoView(
                  videoAsset: 'assets/videos/video2.mp4',
                  title: "مراقبة التسريبات على الشبكة ومراجعة التقدم",
                  description: """
تبرز الخطوة الأخيرة في سير العمل هذا مدير العمليات في المكتب. يستخدم لوحة معلومات العمليات لمراقبة جميع عمليات مرفق المياه واتخاذ قرارات سريعة. تمكنه لوحة معلومات العمليات من عرض خريطة عمليات مباشرة محاطة بمؤشرات الأداء الرئيسية ذات الصلة على شاشة واحدة. يمكن أن يشمل ذلك قوائم العمال وأوامر العمل ، وعدد التسريبات ، وتقسيم الحوادث حسب الخطورة ، وتفاصيل كل تسرب / حادث ، وتغذية حركة المرور / الطقس الحية.
يتم تحديث لوحة معلومات العمليات بانتظام مما يسمح لمدير العمليات بعرض جميع المعلومات في الوقت الفعلي واكتساب وعي أفضل بالحالة. يمكنه بعد ذلك اتخاذ القرارات في لمحة مع مراعاة أي حوادث قد تؤثر على أداء الطواقم الميدانية.
""",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          // Page Indicator
          buildPageIndicator(),
          SizedBox(
            height: 100.h,
          ),
        ],
      ),
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4, // Number of pages
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          width: 5.w,
          height: 15.h,
          decoration: BoxDecoration(
            color: _currentPage == index
                ? AppTheme.light.primaryDark
                : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class VideoView extends StatefulWidget {
  final String videoAsset;
  final String title;
  final String description;

  const VideoView({
    required this.videoAsset,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late VideoPlayerController _videoController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.videoAsset)
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
        });
        if (mounted) {
          _videoController.play();
        }
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            height: 300.h,
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAlias,
              child: AspectRatio(
                aspectRatio: _isInitialized
                    ? _videoController.value.aspectRatio
                    : 16 / 9,
                child: _isInitialized
                    ? VideoPlayer(_videoController)
                    : Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: AppText.b1b!.copyWith(
                  color: AppTheme.light.primaryDark,
                  fontFamily: 'stc',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: SizedBox(
                  width: 100.w,
                  child: Text(
                    widget.description,
                    style: AppText.l1!.copyWith(
                      color: Colors.grey,
                      fontFamily: 'stc',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
