import 'package:flutter/material.dart';
import 'package:nikunj_portfolio/data/data/projects_data.dart';

import 'package:nikunj_portfolio/screens/projects/project_description_card.dart';
import 'package:nikunj_portfolio/screens/projects/project_card_widget.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 80, 0, 40),
      child: SizedBox(
        height: mq.height * 0.68,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          const ProjectDescriptionCard(),
          ...projects.map((e) => ProjectCardWidget(project: e))
        ]),
      ),
    );
  }
}
