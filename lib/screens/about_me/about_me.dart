import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/screens/about_me/introduction_widget.dart';
import 'package:nikunj_portfolio/screens/about_me/personal_info_widget.dart';

class AboutMe extends StatelessWidget {
  final ScrollController scrollController;

  const AboutMe({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Row(
          children: [
            Container(
              width: mq.width * 0.4,
              height: mq.height * 1.1,
              color: Theme.of(context).canvasColor,
            ),
            SizedBox(width: mq.width * 0.6),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: mq.height * 0.2, left: mq.width * 0.18),
          height: mq.height * 0.72,
          width: mq.width * 0.58,
          child: Row(
            children: [
              const PersonalInfoWidget(),
              IntroductionWidget(scrollController: scrollController),
            ],
          ),
        ),
      ],
    );
  }
}
