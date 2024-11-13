import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/utils/constants.dart';

class AnimatedDotWidget extends StatelessWidget {
  final int noOfDots;
  final int currentSelectedDot;
  final MainAxisAlignment mainAxisAlignment;

  const AnimatedDotWidget({
    super.key,
    required this.noOfDots,
    required this.currentSelectedDot,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: List.generate(
          noOfDots,
          (index) => AnimatedContainer(
            duration: kTestimonialSlidingDuration,
            margin: const EdgeInsets.only(right: 6),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: currentSelectedDot == index
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1.5,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
