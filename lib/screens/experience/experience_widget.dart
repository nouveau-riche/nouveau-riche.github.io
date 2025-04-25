import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/data/modals/experience_modal.dart';
import 'package:nikunj_portfolio/screens/experience/technologies_used_widget.dart';
import 'package:nikunj_portfolio/utils/url_launcher_utils.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModal experience;

  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * 0.6,
      width: mq.width * 0.62,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: experience.cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 6,
            offset: const Offset(2.0, 2.0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  UrlLauncherUtils.openUrl(experience.companyUrl);
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(experience.companyLogo),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    experience.jobTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "@${experience.company}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  experience.timeline,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
              const SizedBox(width: 40)
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: experience.description
                  .map(
                    (item) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SelectableText(
                          '♦ ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: SelectableText(
                            item,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
          const Spacer(),
          TechnologiesUsedWidget(experience: experience),
        ],
      ),
    );
  }
}
