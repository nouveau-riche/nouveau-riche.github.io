import 'package:flutter/material.dart';

import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/data/modals/experience_modal.dart';

final experienceData = [
  ExperienceModal(
    id: 1,
    company: "Carrier",
    companyLogo: Assets.imagesCarrier,
    jobTitle: "Software Engineer",
    description:
        "Working on Vi Guide application Sportzlite Community is a community of sports lovers coming together to discuss/argue on topics, share ideas, represent their favorite sports team and in the process knowing more from others around them",
    technologies: [
      Assets.iconsFlutter,
      Assets.iconsDart,
      Assets.iconsGithub,
      Assets.iconsBloc,
      Assets.iconsS3,
      Assets.iconsLambda,
      Assets.iconsMongodb,
      Assets.iconsFigma,
      Assets.iconsAndroid,
      Assets.iconsPostman,
    ],
    timeline: "Jul 2023 - Present",
    cardColor: const Color.fromRGBO(244, 236, 247, 1),
  ),
  ExperienceModal(
    id: 2,
    company: "Alpine Software",
    companyLogo: Assets.imagesAlpine,
    jobTitle: "Flutter Developer",
    description:
        "Working on Vi Guide application Sportzlite Community is a community of sports lovers coming together to discuss/argue on topics, share ideas, represent their favorite sports team and in the process knowing more from others around them",
    technologies: [
      Assets.iconsFlutter,
      Assets.iconsFirebase,
      Assets.iconsDart,
      Assets.iconsGithub,
      Assets.iconsGetx,
      Assets.iconsFigma,
      Assets.iconsAndroid,
      Assets.iconsPostman,
    ],
    timeline: "Jan 2023 - Jun 2023",
    cardColor: const Color.fromRGBO(253, 237, 236, 1),
  ),
  ExperienceModal(
    id: 3,
    company: "Sortizy",
    companyLogo: Assets.imagesSortizy,
    jobTitle: "Flutter Developer",
    description:
        "Working on Vi Guide application Sportzlite Community is a community of sports lovers coming together to discuss/argue on topics, share ideas, represent their favorite sports team and in the process knowing more from others around them",
    technologies: [
      Assets.iconsFlutter,
      Assets.iconsFirebase,
      Assets.iconsDart,
      Assets.iconsGithub,
      Assets.iconsGetx,
      Assets.iconsFigma,
      Assets.iconsAndroid,
      Assets.iconsPostman,
    ],
    timeline: "Sep 2021 - Oct 2022",
    cardColor: const Color.fromRGBO(214, 234, 248, 1),
  ),
  ExperienceModal(
    id: 4,
    company: "Zujo.co",
    companyLogo: Assets.imagesZujo,
    jobTitle: "Flutter Instructor",
    description:
        "Mentored college students to develop the skill of Flutter, Firebase, Dart and Github. During these months, I have successfully mentored some students and empowered them building intermediate level Flutter Application.",
    technologies: [
      Assets.iconsFlutter,
      Assets.iconsFirebase,
      Assets.iconsDart,
      Assets.iconsGithub,
    ],
    timeline: "May 2021 - Aug 2021",
    cardColor: const Color.fromRGBO(247, 242, 238, 1),
  ),
  ExperienceModal(
    id: 5,
    company: "Developer Student Club",
    companyLogo: Assets.imagesDsc,
    jobTitle: "Core Team Member",
    description:
        "Facilitated workshops about programming, open source and and mobile development.",
    technologies: [
      Assets.iconsFlutter,
      Assets.iconsDart,
      Assets.iconsGithub,
    ],
    timeline: "Sep 2020 - Jul 2021",
    cardColor: const Color.fromRGBO(234, 242, 227, 1),
  ),
];
