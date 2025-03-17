import 'package:flutter/material.dart';

class ExperienceModal {
  final int id;
  final String company;
  final String companyLogo;
  final String companyUrl;
  final String jobTitle;
  final String description;
  final String timeline;
  final List<Technology> technologies;
  final Color cardColor;

  ExperienceModal({
    required this.id,
    required this.company,
    required this.companyLogo,
    required this.companyUrl,
    required this.jobTitle,
    required this.timeline,
    required this.cardColor,
    required this.description,
    required this.technologies,
  });
}

class Technology {
  final int id;
  final String name;
  final String image;

  Technology({
    required this.id,
    required this.name,
    required this.image,
  });
}
