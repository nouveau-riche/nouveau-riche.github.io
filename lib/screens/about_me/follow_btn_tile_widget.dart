import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/screens/footer/follow_widget.dart';
import 'package:nikunj_portfolio/utils/constants.dart';

class FollowBtnTileWidget extends StatelessWidget {
  const FollowBtnTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      height: mq.height * 0.07,
      decoration:  BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FollowWidget(
            url: kInstagramUrl,
            icon: FontAwesomeIcons.instagram,
          ),
          FollowWidget(
            url: kLinkedUrl,
            icon: FontAwesomeIcons.linkedin,
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
            url: kMediumUrl,
            icon: FontAwesomeIcons.medium,
          ),
        ],
      ),
    );
  }
}
