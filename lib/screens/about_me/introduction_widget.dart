import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/utils/constants.dart';
import 'package:nikunj_portfolio/utils/method_utils.dart';

class IntroductionWidget extends StatelessWidget {
  final ScrollController scrollController;

  const IntroductionWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      padding: EdgeInsets.all(mq.width * 0.02),
      width: mq.width * 0.30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Hello',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const Text(
            'This is Nikunj',
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'RESUME',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    downloadFileFromUrl(
                      fileUrl: kResumeUrl,
                      fileName: "Nikunj_Sharma.pdf",
                    );
                  },
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 120,
                child: TextButton(
                  onPressed: () => scrollToIndex(
                    scrollController,
                    1,
                    mq.height * 1.12,
                  ),
                  style: Theme.of(context).outlinedButtonTheme.style,
                  child: const Text(
                    'PROJECTS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SelectableText(
            'Enthusiastic Flutter Developer eager to\ncontribute to team success through hard work, \nattention to detail and excellent organizational \nskills. Clear understanding of Flutter, Firebase \nand Data Structure. Motivated to learn, grow and excel.',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
