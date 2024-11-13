import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nikunj_portfolio/utils/constants.dart';

class ProjectDescriptionCard extends StatelessWidget {
  const ProjectDescriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * 0.68,
      width: mq.width * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue.withOpacity(0.1),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.grey.shade200.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PROJECTS",
            style: GoogleFonts.anton(
              fontWeight: FontWeight.bold,
              fontSize: 44,
              letterSpacing: 1.4,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            projectsDescription,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
