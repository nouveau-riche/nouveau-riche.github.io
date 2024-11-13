import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/screens/about_me/about_me.dart';
import 'package:nikunj_portfolio/screens/footer/footer.dart';
import 'package:nikunj_portfolio/screens/header/header.dart';
import 'package:nikunj_portfolio/screens/projects/projects.dart';
import 'package:nikunj_portfolio/screens/resume/resume.dart';
import 'package:nikunj_portfolio/screens/testimonials/testimonials.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AboutMe(),
                  Projects(),
                  Resume(),
                  Testimonials(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
