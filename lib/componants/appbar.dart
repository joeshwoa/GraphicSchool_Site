import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gs_site/app_cubit/app_cubit.dart';
import 'package:gs_site/screens/layout.dart';
import 'package:gs_site/shared/shared.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Appbar extends StatefulWidget {
  Appbar({Key? key,required this.onLayout});

  late bool onLayout;

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  bool isHoveringHome = false;

  bool isHoveringAbout = false;

  bool isHoveringClasses = false;

  bool isHoveringInstraction = false;

  bool isHoveringMedia = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 10.w,
          ),
          Image(
            image: AssetImage("assets/logos.png"),
            height: 15.h,
            width: 20.w,
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            width: 50.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 5.h,
                  width: 7.w,
                  child: MouseRegion(
                    onHover: (e) {
                      setState(() {
                        isHoveringHome = true;
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        isHoveringHome = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      child: isHoveringHome || screen_num == 0
                          ? Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10.px),
                            color:
                            Color(0xffd7d3f0).withOpacity(0.28),
                            border: Border.all(
                                color: Color(0xffa196e2)
                                    .withOpacity(0.28),
                                width: 1.px)),
                        child: MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 0;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 0;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: AnimatedTextKit(
                            onTap: () {
                              if(!widget.onLayout)
                              {
                                screen_num = 0;
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                                return;
                              }
                              setState(() {
                                screen_num = 0;
                                AppCubit.get(context)
                                    .ChangePage(screen_num);
                              });
                            },
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText("Home",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp),
                                  speed: Duration(milliseconds: 200))
                            ],
                          ),
                        ),
                      )
                          : MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 0;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 0;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: Text("Home",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                  width: 7.w,
                  child: MouseRegion(
                    onHover: (e) {
                      setState(() {
                        isHoveringClasses = true;
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        isHoveringClasses = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      child: isHoveringClasses || screen_num == 1
                          ? Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10.px),
                            color:
                            Color(0xffd7d3f0).withOpacity(0.28),
                            border: Border.all(
                                color: Color(0xffa196e2)
                                    .withOpacity(0.28),
                                width: 1.px)),
                        child: MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 1;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 1;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: AnimatedTextKit(
                            onTap: () {
                              if(!widget.onLayout)
                              {
                                screen_num = 1;
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                                return;
                              }
                              setState(() {
                                screen_num = 1;
                                AppCubit.get(context)
                                    .ChangePage(screen_num);
                              });
                            },
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText("Courses",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp),
                                  speed: Duration(milliseconds: 200))
                            ],
                          ),
                        ),
                      )
                          : MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 1;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 1;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: Text("Courses",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp))),
                    ),
                  ),
                ),
                SizedBox(
                  child: MouseRegion(
                    onHover: (e) {
                      setState(() {
                        isHoveringInstraction = true;
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        isHoveringInstraction = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      child: isHoveringInstraction || screen_num == 2
                          ? Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10.px),
                            color:
                            Color(0xffd7d3f0).withOpacity(0.28),
                            border: Border.all(
                                color: Color(0xffa196e2)
                                    .withOpacity(0.28),
                                width: 1.px)),
                        child: MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 2;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 2;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: AnimatedTextKit(
                            onTap: () {
                              if(!widget.onLayout)
                              {
                                screen_num = 2;
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                                return;
                              }
                              setState(() {
                                screen_num = 2;
                                AppCubit.get(context)
                                    .ChangePage(screen_num);
                              });
                            },
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText("Instructors",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp),
                                  speed: Duration(milliseconds: 200))
                            ],
                          ),
                        ),
                      )
                          : MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 2;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 2;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: Text("Instructors",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                  width: 7.w,
                  child: MouseRegion(
                    onHover: (e) {
                      setState(() {
                        isHoveringMedia = true;
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        isHoveringMedia = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      child: isHoveringMedia || screen_num == 3
                          ? Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10.px),
                            color:
                            Color(0xffd7d3f0).withOpacity(0.28),
                            border: Border.all(
                                color: Color(0xffa196e2)
                                    .withOpacity(0.28),
                                width: 1.px)),
                        child: MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 3;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 3;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: AnimatedTextKit(
                            onTap: () {
                              if(!widget.onLayout)
                              {
                                screen_num = 3;
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                                return;
                              }
                              setState(() {
                                screen_num = 3;
                                AppCubit.get(context)
                                    .ChangePage(screen_num);
                              });
                            },
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText("Media",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp),
                                  speed: Duration(milliseconds: 200))
                            ],
                          ),
                        ),
                      )
                          : MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 3;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 3;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: Text("Media",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                  width: 7.w,
                  child: MouseRegion(
                    onHover: (e) {
                      setState(() {
                        isHoveringAbout = true;
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        isHoveringAbout = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      child: isHoveringAbout || screen_num == 4
                          ? Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10.px),
                            color:
                            Color(0xffd7d3f0).withOpacity(0.28),
                            border: Border.all(
                                color: Color(0xffa196e2)
                                    .withOpacity(0.28),
                                width: 1.px)),
                        child: MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 4;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 4;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: AnimatedTextKit(
                            onTap: () {
                              if(!widget.onLayout)
                              {
                                screen_num = 4;
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                                return;
                              }
                              setState(() {
                                screen_num = 4;
                                AppCubit.get(context)
                                    .ChangePage(screen_num);
                              });
                            },
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText("About",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp),
                                  speed: Duration(milliseconds: 200))
                            ],
                          ),
                        ),
                      )
                          : MaterialButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            if(!widget.onLayout)
                            {
                              screen_num = 4;
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Layout()));
                              return;
                            }
                            setState(() {
                              screen_num = 4;
                              AppCubit.get(context)
                                  .ChangePage(screen_num);
                            });
                          },
                          child: Text("About",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }
}
