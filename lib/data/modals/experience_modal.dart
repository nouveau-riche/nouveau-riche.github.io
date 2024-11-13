import 'package:flutter/material.dart';

class ExperienceModal {
  final int id;
  final String company;
  final String companyLogo;
  final String jobTitle;
  final String description;
  final String timeline;
  final List<String> technologies;
  final Color cardColor;

  ExperienceModal({
    required this.id,
    required this.company,
    required this.companyLogo,
    required this.jobTitle,
    required this.timeline,
    required this.cardColor,
    required this.description,
    required this.technologies,
  });
}
