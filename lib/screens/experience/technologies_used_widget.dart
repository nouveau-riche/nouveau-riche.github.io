import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/data/modals/experience_modal.dart';

class TechnologiesUsedWidget extends StatelessWidget {
  final ExperienceModal experience;

  const TechnologiesUsedWidget({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: experience.technologies
            .map(
              (e) => Tooltip(
                message: e.name,
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                  child: Image.asset(
                    e.image,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
