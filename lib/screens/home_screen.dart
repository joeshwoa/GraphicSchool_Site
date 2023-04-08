

import 'package:flutter/material.dart';

import 'home_sec/courses_sec.dart';
import 'home_sec/first_sec.dart';
import 'home_sec/schedule_sec.dart';
import 'home_sec/speakers_sec.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO: first sec
        FirstSec(),
        // TODO: courses sec
        CoursesSec(),
        // TODO: schedule sec
        ScheduleSec(),
        // TODO: speakers sec
        SpeakersSec(),
        // TODO: student success stories sic
        /*SizedBox(
          width: 100.w,
          height: 100.h,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text("Student Success Stories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.sp)),
                SizedBox(
                  height: 1.h,
                ),
                Text("DON'T JUST OUR WORD FOR IT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: Colors.grey)),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 72.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.px),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                          Image(
                              image:
                              AssetImage("assets/FB_IMG_1677251852952.jpg"),
                              width: 12.w),
                        ],
                      )
                    ],
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 9.h,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.px),
                        gradient: LinearGradient(colors: [
                          Color(0xffa196e2),
                          Color(0xff5e3593),
                        ])),
                    child: MaterialButton(
                      onPressed: () {},
                      clipBehavior: Clip.antiAlias,
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      child: Text("Student Success Stories",
                          style:
                          TextStyle(color: Colors.white, fontSize: 12.sp)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                )
              ],
            ),
          ),
        ),*/
      ],
    );
  }
}
