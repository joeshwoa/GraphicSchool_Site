import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gs_site/app_cubit/app_cubit.dart';
import 'package:gs_site/shared/shared.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../data/courses_sec_data.dart';

class CoursesSec extends StatelessWidget {
  CoursesSec({Key? key}) : super(key: key);

  int courseNum = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return SizedBox(
              height: 90.h,
              width: 100.w,
              child: Stack(
                children: [
                  Container(
                    height: 90.h,
                    width: 100.w,
                    decoration: BoxDecoration(color: Color(0xffe0e0e0)),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.w,
                        height: 90.h,
                      ),
                      Container(
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.px),
                              topLeft: Radius.circular(30.px),
                            )),
                        clipBehavior: Clip.antiAlias,
                        child: Image(
                          image: AssetImage(coursePhoto[courseNum]),
                          fit: BoxFit.cover,
                        )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90.h,
                    width: 100.w,
                    child: Row(
                      children: [
                        Container(
                          color: Color(0xffe0e0e0),
                          width: 30.w,
                          height: 90.h,
                          child: Padding(
                            padding: EdgeInsets.all(30.px),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  courseName[courseNum],
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                                Text(
                                  "Description",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                AutoSizeText(
                                    courseDes[courseNum],
                                    style: TextStyle(fontSize: 14.sp),
                                    maxLines: 8,
                                    textAlign: TextAlign.start),
                                MaterialButton(
                                  onPressed: () {
                                    screen_num=-1;
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => courseScreen[courseNum]));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(15.px),
                                        color: Color(0xFF182633)),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.px),
                                      child: Text(
                                        "More Info",
                                        style: TextStyle(
                                            color: Color(0xffe0e0e0),
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 90.h,
                          width: 70.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        if (courseNum > 0) {
                                          courseNum--;
                                          AppCubit.get(context).ChangeCourse();
                                        }
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(10.px),
                                        child: Icon(Icons.arrow_back_ios),
                                      ),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        if (courseNum <
                                            coursePhoto.length - 1) {
                                          courseNum++;
                                          AppCubit.get(context).ChangeCourse();
                                        }
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(10.px),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                        ),
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                ),
                                width: 70.w,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
