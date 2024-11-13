import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/data/modals/project_modal.dart';
import 'package:nikunj_portfolio/generated/assets.dart';

import 'package:nikunj_portfolio/utils/url_launcher_utils.dart';

class ProjectRedirectWidget extends StatelessWidget {
  final ProjectModal project;

  const ProjectRedirectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: project.hasPlayStoreUrl
          ? ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                Assets.imagesPlaystore,
                fit: BoxFit.fill,
              ),
            )
          : TextButton.icon(
              iconAlignment: IconAlignment.end,
              icon: const Icon(
                FontAwesomeIcons.arrowUpRightFromSquare,
                color: Colors.black,
                size: 14,
              ),
              onPressed: () {
                // UrlLauncherUtils.openUrl(project.githubUrl);
              },
              label: const Text(
                "View on Github",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
    );
  }
}
