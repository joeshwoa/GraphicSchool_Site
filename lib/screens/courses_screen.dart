import 'package:flutter/material.dart';
import 'package:gs_site/componants/course_card.dart';
import 'package:gs_site/data/courses_sec_data.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 70.h,
          child: Padding(
            padding: EdgeInsets.all(25.px),
            child: Container(
              child: Image(image: AssetImage("assets/Graphic_design.png"),fit: BoxFit.fitWidth),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.px),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 100.w,
          height: 100.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: CourseCard(
                  courseName: courseName[0],
                  imagePath: coursePhoto[0],
                  courseInfoScreen: courseScreen[0],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: CourseCard(
                  courseName: courseName[1],
                  imagePath: coursePhoto[1],
                  courseInfoScreen: courseScreen[1],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: CourseCard(
                  courseName: courseName[2],
                  imagePath: coursePhoto[2],
                  courseInfoScreen: courseScreen[2],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
