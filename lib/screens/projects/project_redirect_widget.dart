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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (project.hasPlayStoreUrl)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  UrlLauncherUtils.openUrl(project.playStoreUrl ?? "");
                },
                child: Image.asset(
                  Assets.imagesPlaystore,
                  fit: BoxFit.fill,
                  height: 40,
                  width: 140,
                ),
              ),
            ),
          if (project.hasAppStoreUrl) ...[
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  UrlLauncherUtils.openUrl(project.appStoreUrl ?? "");
                },
                child: Image.asset(
                  Assets.imagesAppstore,
                  fit: BoxFit.fill,
                  height: 40,
                  width: 140,
                ),
              ),
            ),
          ],
          if (project.hasGithubUrl) ...[
            if (project.hasAppStoreUrl || project.hasPlayStoreUrl)
              const SizedBox(width: 10),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                iconAlignment: IconAlignment.end,
                icon: const Icon(
                  FontAwesomeIcons.arrowUpRightFromSquare,
                  color: Colors.black,
                  size: 14,
                ),
                onPressed: () {
                  UrlLauncherUtils.openUrl(project.githubUrl ?? "");
                },
                label: const Text(
                  "View on Github",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
