import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/screens/about_me/about_me.dart';
import 'package:nikunj_portfolio/screens/footer/footer.dart';
import 'package:nikunj_portfolio/screens/header/header.dart';
import 'package:nikunj_portfolio/screens/projects/projects.dart';
import 'package:nikunj_portfolio/screens/experience/experience.dart';
import 'package:nikunj_portfolio/screens/testimonials/testimonials.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(scrollController: _scrollController),
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: [
                AboutMe(scrollController: _scrollController),
                const Projects(),
                const Experience(),
                const Testimonials(),
                const Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
