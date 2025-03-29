import 'package:flutter/material.dart';

class ProjectTitleCardWidget extends StatelessWidget {
  final String title;

  const ProjectTitleCardWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * 0.68,
      width: mq.width * 0.14,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.fromLTRB(32, 0, 0, 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Colors.pink.withValues(alpha: 0.2),
            Colors.greenAccent.withValues(alpha: 0.2),
            Colors.blue.withValues(alpha: 0.2),
            Colors.amber.withValues(alpha: 0.2),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        color: Colors.grey.shade200.withValues(alpha: 0.5),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
