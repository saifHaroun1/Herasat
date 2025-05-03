part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var appProvider = Provider.of<AppProvider>(context);

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomSectionHeading(
            text: '\nرقمنة موارد و اصول شبكة المياه',
          ),
          CustomSectionSubHeading(
            text: 'تمكين العمليات الميدانية لتحسين التعاون والكفاءة',
          ),
          SizedBox(height: 30.h),
          SizedBox(
            width: width * 0.5,
            child: Text(
              "مفتاح نظام إدارة المياه الذكي هو وجود مستودع مركزي موحد لجميع البيانات. تبدأ الإدارة الذكية للمياه بتفعيل أدوات نظم المعلومات الجغرافية (GIS). يمكن هذا النظام من تحديد موقع الأنابيب والأصول بدقة. كما يُستخدم لإدارة سجل الأصول وتحليل أداء النظام وأتمتة دورة العمل، مما يسهل التعاون والتنسيق بين مختلف الفرق والإدارات.",
              style: AppText.b2!.copyWith(
                fontFamily: 'stc',
                fontSize: AppDimensions.normalize(5),
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20.h),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100.h,
                    color: Colors.transparent,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300.h,
                    color: AppTheme.light.backgroundSub!
                        .withOpacity(appProvider.isDark ? 0.3 : 1),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 5.w,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: ServicesUtils.servicesIcons
                        .asMap()
                        .entries
                        .map(
                          (e) => _ServiceCard(
                            serviceIcon: ServicesUtils.servicesIcons[e.key],
                            serviceTitle: ServicesUtils.servicesTitles[e.key],
                            serviceDescription:
                                ServicesUtils.servicesDescription[e.key],
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
