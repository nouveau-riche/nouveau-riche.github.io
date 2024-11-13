import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/data/modals/experience_modal.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModal experience;

  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * 0.52,
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
              ClipRRect(
                borderRadius: BorderRadius.circular(26),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.1),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Image.network(experience.companyLogo),
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
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "@${experience.company}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
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
                    color: Colors.black26,
                  ),
                ),
              ),
              const SizedBox(width: 40)
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              experience.description,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: experience.technologies
                  .map(
                    (e) => Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Image.asset(
                        e,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
