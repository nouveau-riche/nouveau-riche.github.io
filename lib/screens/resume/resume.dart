import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

import 'package:nikunj_portfolio/data/data/experience_data.dart';
import 'package:nikunj_portfolio/screens/resume/experience_widget.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Column(
      children: [
        const SizedBox(height: 70),
        Text(
          "My road to glory!",
          style: GoogleFonts.anton(
            fontWeight: FontWeight.bold,
            fontSize: 44,
            letterSpacing: 1.4,
          ),
        ),
        const Text(
          "Below you can see a timeline with some of",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          "my professional accomplishments.",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 26),
        SizedBox(
          height: mq.height * 0.65,
          width: mq.width * 0.7,
          child: StackedCardCarousel(
            spaceBetweenItems: 600,
            initialOffset: 0,
            items: experienceData
                .map((e) => ExperienceCard(experience: e))
                .toList(),
          ),
        ),
      ],
    );
  }
}
