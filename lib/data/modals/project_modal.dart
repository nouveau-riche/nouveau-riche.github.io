import 'package:flutter/material.dart';

class ProjectModal {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final bool hasPlayStoreUrl;
  final bool hasAppStoreUrl;
  final bool hasGithubUrl;
  final String? githubUrl;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final Color cardColor;

  ProjectModal({
    required this.id,
    required this.title,
    required this.description,
    required this.cardColor,
    required this.imageUrl,
    this.hasPlayStoreUrl = false,
    this.hasAppStoreUrl = false,
    this.hasGithubUrl = false,
    this.githubUrl,
    this.appStoreUrl,
    this.playStoreUrl,
  });
}
