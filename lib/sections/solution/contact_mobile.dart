import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/components/applocal.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> solutionImagesPage1 = [
      "assets/photos/prof.png",
      "assets/photos/quality.png",
      "assets/photos/integrety.png",
    ];

    final List<String> solutionTitlesPage1 = [
      "${getLang(context, "Professionalism")}",
      "${getLang(context, "Quality")}",
      "${getLang(context, "Integrity")}",
    ];

    final List<String> solutionDescriptionPage1 = [
      "Demonstrating confidence, discipline, and attention to detail—hallmarks of professional security service that builds client trust from the very first interaction.",
      "Utilizing advanced technology and well-trained personnel to deliver top-tier security operations that exceed industry standards.",
      "Acting with honesty, reliability, and a strong sense of duty—ensuring safety while upholding the values of ethical service."
    ];
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        CustomSectionSubHeading(
          text: "Let's build something together :)\n\n",
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              projectTitle: solutionTitlesPage1[i],
              projectDescription: solutionDescriptionPage1[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(90),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
