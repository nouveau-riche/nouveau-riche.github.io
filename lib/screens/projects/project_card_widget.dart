import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/data/modals/project_modal.dart';
import 'package:nikunj_portfolio/screens/projects/project_redirect_widget.dart';
import 'package:nikunj_portfolio/screens/projects/project_title_card_widget.dart';

class ProjectCardWidget extends StatelessWidget {
  final ProjectModal project;

  const ProjectCardWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProjectTitleCardWidget(title: project.title),
        Container(
          height: mq.height * 0.68,
          width: mq.width * 0.25,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: project.cardColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    project.imageUrl,
                    height: mq.height * 0.28,
                    width:  mq.width * 0.25,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  project.description,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.8,
                  ),
                ),
              ),
              const Spacer(),
              ProjectRedirectWidget(project: project),
            ],
          ),
        ),
      ],
    );
  }
}
