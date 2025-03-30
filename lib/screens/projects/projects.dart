import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/data/data/projects_data.dart';
import 'package:nikunj_portfolio/screens/projects/project_description_card.dart';
import 'package:nikunj_portfolio/screens/projects/project_card_widget.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 600,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _scrollToRight() {
    _scrollController.animateTo(
      _scrollController.offset + 600,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 80, 0, 40),
      child: Stack(
        children: [
          SizedBox(
            height: mq.height * 0.68,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: [
                const ProjectDescriptionCard(),
                ...projects.map(
                  (e) => ProjectCardWidget(
                    project: e,
                    cardColor: e.id % 2 == 1
                        ? Theme.of(context).cardColor
                        : Theme.of(context).highlightColor,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          Positioned(
            top: mq.height * 0.3,
            left: 10,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                onPressed: _scrollToLeft,
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
          Positioned(
            top: mq.height * 0.3,
            right: 10,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                onPressed: _scrollToRight,
                icon: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
