import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Colors.pink.withOpacity(0.2),
            Colors.greenAccent.withOpacity(0.2),
            Colors.blue.withOpacity(0.2),
            Colors.amber.withOpacity(0.2),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        color: Colors.grey.shade200.withOpacity(0.5),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          title,
          style: GoogleFonts.anton(
            fontWeight: FontWeight.bold,
            fontSize: 44,
            letterSpacing: 1.4,
          ),
        ),
      ),
    );
  }
}
