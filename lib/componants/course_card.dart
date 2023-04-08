import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gs_site/app_cubit/app_cubit.dart';
import 'package:gs_site/shared/shared.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CourseCard extends StatelessWidget {
  CourseCard({super.key,required this.courseName,required this.imagePath,required this.courseInfoScreen});

  bool cardHover = false;
  late String courseName ;
  late String imagePath;
  late Widget courseInfoScreen;



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.px),
                color: Color(0xffe0e0e0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffffffff),
                      offset: cardHover? Offset(-10.px, -10.px) : Offset(-28.px, -28.px),
                      blurRadius: cardHover? 5.px : 20.px,
                      inset: cardHover
                  ),
                  BoxShadow(
                      color: Color(0xffbebebe),
                      offset: cardHover? Offset(10.px, 10.px) : Offset(28.px, 28.px),
                      blurRadius: cardHover? 5.px : 20.px,
                      inset: cardHover
                  ),
                ]
            ),
            clipBehavior: Clip.antiAlias,
            height: 60.h,
            width: 20.w,
            child: MouseRegion(
              onHover: (e) {
                cardHover = true;
                AppCubit.get(context).HoverCourse();
              },
              onExit: (e) {
                cardHover = false;
                AppCubit.get(context).HoverCourse();
              },
              child: MaterialButton(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    screen_num=-1;
                    Navigator.push(context,MaterialPageRoute(builder: (context) => courseInfoScreen));
                  },
                  child: cardHover ?
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.px,
                      vertical: 10.px
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage(imagePath),
                            width: 20.w-20.px,
                            height: 40.h-20.px,
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.px)
                          ),
                          clipBehavior: Clip.antiAlias,
                        ),
                        SizedBox(
                          width: 20.w-20.px,
                          height: 20.h-20.px,
                          child: Center(
                            child: Text(courseName,style: TextStyle(
                                fontSize: 18.sp
                            )),
                          ),
                        )
                      ],
                    ),
                  ) :
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.px
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 20.w,
                          height: 40.h-10.px,
                          child: Image(
                            image: AssetImage(imagePath),
                            width: 20.w,
                            height: 40.h-10.px,
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.px)
                          ),
                          clipBehavior: Clip.antiAlias,
                        ),
                        SizedBox(
                          height: 20.h-10.px,
                          width: 20.w,
                          child: Center(
                            child: Text(courseName,style: TextStyle(
                              fontSize: 18.sp
                            )),
                          ),
                        )
                      ],
                    ),
                  )
              ),
            ),
          );
        },
      ),
    );
  }
}
