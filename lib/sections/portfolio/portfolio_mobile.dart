import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      "assets/photos/features1.jpg",
      "assets/photos/features2.jpg",
      "assets/photos/features3.jpg",
      // "assets/photos/covidB.png",
    ];

    final List<String> titles = [
      "${getLang(context, "Security_And_Guarding")}",
      "${getLang(context, "Personal_Guarding")}",
      "${getLang(context, "Security_for_Events")}",
    ];

    final List<String> description = [
      "${getLang(context, "Service_Description")}",
      "${getLang(context, "Personal_Guarding_Description")}",
      "${getLang(context, "Events_Description")}",
    ];

    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nPortfolio",
        ),
        CustomSectionSubHeading(
          text: "Here are few samples of my previous work :)\n\n",
        ),
        CarouselSlider.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              projectTitle: titles[i],
              projectDescription: description[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y!,
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(50),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'See More',
              style: AppText.l1b,
            ),
          ),
        )
      ],
    );
  }
}
