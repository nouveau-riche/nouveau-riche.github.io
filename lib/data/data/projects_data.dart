import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/utils/constants.dart';
import 'package:nikunj_portfolio/data/modals/project_modal.dart';

final projects = [
  ProjectModal(
    id: 1,
    title: "SORTIZY -\nEVERYDAY RECIPES",
    description:
        "Sortizy, along with its Easy to Cook Recipe Cards, Meal Planner, and Grocery Lists, is the Kitchen Management and Cooking App you’ve been waiting for!",
    githubUrl: "https://github.com/nouveau-riche/smart_kaksha",
    imageUrl: Assets.gifsSortizyProject,
    cardColor: kCardColor,
    hasGithubUrl: false,
    hasPlayStoreUrl: true,
    hasAppStoreUrl: true,
    playStoreUrl: "https://play.google.com/store/apps/details?id=com.sortizy",
    appStoreUrl: "https://apps.apple.com/in/app/sortizy-recipes/id1588232490",
  ),
  ProjectModal(
    id: 2,
    title: "THE ADVENTUROUS\nLEARNER",
    description:
        "Transforming everyday outings into hands-on learning experiences. Using our interactive map, parents and children can find nearby hands-on learning opportunities—whether it’s exploring nature, history, science, or the arts. Perfect for worldschooling, homeschooling, or simply enhancing a weekend adventure.",
    githubUrl: "https://github.com/nouveau-riche/adventurous",
    imageUrl: Assets.gifsLearnerProject,
    cardColor: kCardColor1,
    hasGithubUrl: true,
  ),
  ProjectModal(
    id: 4,
    title: "SMART KAKSHA",
    description:
        "Mobile application that streamlines the assignment process for schools. It enables educators to easily create, distribute, and grade assignments while providing students with a simple, organized interface for tracking and submitting their work.",
    githubUrl: "https://github.com/nouveau-riche/smart_kaksha",
    imageUrl: Assets.iconsClasses,
    cardColor: kCardColor,
    hasGithubUrl: true,
    hasPlayStoreUrl: true,
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.smart_kaksha",
  ),
  ProjectModal(
    id: 5,
    title: "WHO GETS THIS",
    description:
        "Mobile application built using Flutter and Firebase that enables users to capture memorable moment and organize them into collections. It allows for easy PDF generation and sharing, providing a seamless way for users to preserve and share their experiences.",
    githubUrl: "https://github.com/nouveau-riche/Who_gets_this",
    imageUrl: Assets.gifsInventory,
    cardColor: kCardColor1,
    hasGithubUrl: true,
  ),
];
