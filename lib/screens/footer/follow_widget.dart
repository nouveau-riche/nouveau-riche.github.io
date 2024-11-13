import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/utils/url_launcher_utils.dart';

class FollowWidget extends StatelessWidget {
  final String url;
  final IconData icon;

  const FollowWidget({
    super.key,
    required this.url,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon),
      onPressed: () async {
        UrlLauncherUtils.openUrl(url);
      },
    );
  }
}
