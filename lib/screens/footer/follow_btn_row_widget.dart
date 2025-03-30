import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/utils/constants.dart';
import 'package:nikunj_portfolio/screens/footer/follow_widget.dart';

class FollowBtnRowWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const FollowBtnRowWidget({
    super.key,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: const [
        FollowWidget(
          url: kLinkedUrl,
          icon: FontAwesomeIcons.linkedin,
        ),
        FollowWidget(
          url: kMediumUrl,
          icon: FontAwesomeIcons.medium,
        ),
        FollowWidget(
          url: kGithubUrl,
          icon: FontAwesomeIcons.github,
        ),
        FollowWidget(
          url: kTwitterUrl,
          icon: FontAwesomeIcons.twitter,
        ),
        FollowWidget(
          url: kInstagramUrl,
          icon: FontAwesomeIcons.instagram,
        ),
      ],
    );
  }
}
