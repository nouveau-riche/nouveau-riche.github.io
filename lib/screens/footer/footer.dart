import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/utils/constants.dart';
import 'package:nikunj_portfolio/screens/footer/follow_widget.dart';
import 'package:nikunj_portfolio/utils/url_launcher_utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    ' Made with ',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(width: 6),
                  FaIcon(
                    FontAwesomeIcons.solidHeart,
                    size: 15,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                '\u00A9 2025 by Nikunj Sharma',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Call',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    kPhoneNo,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(width: 18),
              GestureDetector(
                onTap: () {
                  UrlLauncherUtils.openMail();
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Write',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      kEmail,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Follow',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FollowWidget(
                        icon: FontAwesomeIcons.instagram,
                        url: kInstagramUrl,
                      ),
                      FollowWidget(
                        icon: FontAwesomeIcons.linkedinIn,
                        url: kLinkedUrl,
                      ),
                      FollowWidget(
                        icon: FontAwesomeIcons.github,
                        url: kGithubUrl,
                      ),
                      FollowWidget(
                        icon: FontAwesomeIcons.twitter,
                        url: kTwitterUrl,
                      ),
                      FollowWidget(
                        url: kMediumUrl,
                        icon: FontAwesomeIcons.medium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
