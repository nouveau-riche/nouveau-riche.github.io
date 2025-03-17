import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/data/modals/experience_modal.dart';

final experienceData = [
  ExperienceModal(
    id: 1,
    company: "Carrier",
    companyLogo: Assets.iconsCarrier,
    companyUrl: "https://www.carrier.com",
    jobTitle: "Software Engineer",
    description: "♦ Spearheaded the development of Heating Systems for ViGuide mobile and web app using Flutter.\n♦ Implemented Clean architecture and TDD engineered modular packages with Retrofit and Bloc anticipating a 30% reduction              in bug reports.\n♦ Integrated localization packages and managed translations efficiently making the app accessible to a global audience aiming for a 25% increase in user satisfaction.\n♦ Integrated REST APIs for seamless data exchange between the app and backend services.\n♦ Implemented push notifications using OneSignal SDK for enabling frequent updates.\n♦ Integrated Firebase Analytics in the app to track user behaviour resulting in a 20% improvement in data-driven decision-making.",
    technologies: [
      Technology(id: 1, name: "Flutter", image: Assets.iconsFlutter),
      Technology(id: 2, name: "Firebase", image: Assets.iconsFirebase),
      Technology(id: 2, name: "Dart", image: Assets.iconsDart),
      Technology(id: 3, name: "Git", image: Assets.iconsGithub),
      Technology(id: 4, name: "Bloc", image: Assets.iconsBloc),
      Technology(id: 8, name: "Figma", image: Assets.iconsFigma),
      Technology(id: 9, name: "Android Studio", image: Assets.iconsAndroid),
      Technology(id: 10, name: "Postman", image: Assets.iconsPostman),
      Technology(id: 11, name: "Jira", image: Assets.iconsJira),
    ],
    timeline: "Jul 2023 - Present",
    cardColor: const Color.fromRGBO(244, 236, 247, 1),
  ),
  ExperienceModal(
    id: 2,
    company: "Alpine Software",
    companyLogo: Assets.iconsAlpine,
    jobTitle: "Flutter Developer",
    companyUrl: "https://www.alpinesoftsolution.com",
    description:
        "♦ Application architecture design\n♦ Developed responsive UI according to design from scratch\n♦ Database and API connection\n♦ Deployed application to Google PlayStore and AppStore Connect",
    technologies: [
      Technology(id: 1, name: "Flutter", image: Assets.iconsFlutter),
      Technology(id: 2, name: "Firebase", image: Assets.iconsFirebase),
      Technology(id: 3, name: "Dart", image: Assets.iconsDart),
      Technology(id: 4, name: "Git", image: Assets.iconsGithub),
      Technology(id: 5, name: "Getx", image: Assets.iconsGetx),
      Technology(id: 6, name: "Figma", image: Assets.iconsFigma),
      Technology(id: 7, name: "Android Studio", image: Assets.iconsAndroid),
      Technology(id: 8, name: "Postman", image: Assets.iconsPostman),
    ],
    timeline: "Jan 2023 - Jun 2023",
    cardColor: const Color.fromRGBO(253, 237, 236, 1),
  ),
  ExperienceModal(
    id: 3,
    company: "Sortizy",
    companyLogo: Assets.iconsSortizy,
    companyUrl: "https://www.sortizy.com",
    jobTitle: "Flutter Developer",
    description:
        "♦ Implemented user authentication for phone number and google signin using Firebase.\n♦ Overhauled the UI for search functionality which helped users to search quicker and improved search time by 11%.\n♦ Implemented analytics feature for content creators.\n♦ Routine updates for improving features and strengthen security.",
    technologies: [
      Technology(id: 1, name: "Flutter", image: Assets.iconsFlutter),
      Technology(id: 2, name: "Firebase", image: Assets.iconsFirebase),
      Technology(id: 3, name: "Dart", image: Assets.iconsDart),
      Technology(id: 4, name: "Git", image: Assets.iconsGithub),
      Technology(id: 5, name: "Getx", image: Assets.iconsGetx),
      Technology(id: 6, name: "Figma", image: Assets.iconsFigma),
      Technology(id: 7, name: "Android Studio", image: Assets.iconsAndroid),
      Technology(id: 8, name: "Postman", image: Assets.iconsPostman),
    ],
    timeline: "Sep 2021 - Oct 2022",
    cardColor: const Color.fromRGBO(214, 234, 248, 1),
  ),
  ExperienceModal(
    id: 4,
    company: "Zujo.co",
    companyLogo: Assets.iconsZujo,
    jobTitle: "Flutter Instructor",
    companyUrl: "https://www.zujo.co",
    description:
        "♦ Mentored college students to develop the skill of Flutter, Firebase, Dart and Github.\n♦ During these months, I have successfully mentored some students and empowered them building intermediate level Flutter Application.",
    technologies: [
      Technology(id: 1, name: "Flutter", image: Assets.iconsFlutter),
      Technology(id: 2, name: "Firebase", image: Assets.iconsFirebase),
      Technology(id: 3, name: "Dart", image: Assets.iconsDart),
      Technology(id: 4, name: "Git", image: Assets.iconsGithub),
    ],
    timeline: "May 2021 - Aug 2021",
    cardColor: const Color.fromRGBO(247, 242, 238, 1),
  ),
  ExperienceModal(
    id: 5,
    company: "Developer Student Club",
    companyLogo: Assets.iconsDsc,
    companyUrl: "https://developers.google.com/profile/u/nikunjsharma",
    jobTitle: "Core Team Member",
    description:
        "♦ Facilitated workshops about programming, open source and and mobile development.",
    technologies: [
      Technology(id: 1, name: "Flutter", image: Assets.iconsFlutter),
      Technology(id: 3, name: "Dart", image: Assets.iconsDart),
      Technology(id: 4, name: "Git", image: Assets.iconsGithub),
    ],
    timeline: "Sep 2020 - Jul 2021",
    cardColor: const Color.fromRGBO(234, 242, 227, 1),
  ),
];
