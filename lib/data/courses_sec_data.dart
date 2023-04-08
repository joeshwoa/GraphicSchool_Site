import 'package:flutter/cupertino.dart';
import 'package:gs_site/screens/course_info_screen.dart';

List<String> courseName = [
  "courses 1",
  "courses 2",
  "courses 3",
];

List<String> courseDes = [
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
];

List<String> coursePhoto = [
  "assets/1677251770039.jpg",
  "assets/img_1_1677251719679.jpg",
  "assets/1677251766943.jpg",
];

List<Widget> courseScreen = [
  CourseInfoScreen(courseName: courseName[0], imagePath: coursePhoto[0], courseDes: courseDes[0], courseRequirement: "1.dart\n2.OOP", coursePrice: "7000 EGP"),
  CourseInfoScreen(courseName: courseName[1], imagePath: coursePhoto[1], courseDes: courseDes[1], courseRequirement: "1.dart\n2.OOP", coursePrice: "7000 EGP"),
  CourseInfoScreen(courseName: courseName[2], imagePath: coursePhoto[2], courseDes: courseDes[2], courseRequirement: "1.dart\n2.OOP", coursePrice: "7000 EGP"),
];