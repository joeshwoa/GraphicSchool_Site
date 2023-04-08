import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gs_site/app_cubit/app_cubit.dart';
import 'package:gs_site/shared/shared.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FirstSec extends StatelessWidget {
  const FirstSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 1,
            child: Builder(
              builder: (context) {
                final double height = 100.h;
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    height: height,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    initialPage: 0,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                      int pageViewIndex) =>
                      Container(
                        width: 100.w,
                        height: 100.h,
                        child: Image(
                          image: AssetImage(backPhoto[itemIndex]),
                          height: 100.h,
                          width: 100.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                  itemCount: backPhoto.length,
                );
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                    child: Container(
                      height: 75.h,
                      width: 80.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.px),
                          color: Color(0xffd7d3f0).withOpacity(0.20),
                          border: Border.all(
                              color: Color(0xffa196e2).withOpacity(0.28),
                              width: 3.px)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WELCOME",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp)),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text("TO GRPHIC SCHOOL",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.sp,
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            MaterialButton(
                              onPressed: () {
                                screen_num = 1;
                                AppCubit.get(context)
                                    .ChangePage(screen_num);
                              },
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(10.0.px),
                                  child: Text("START LAERNEING TODAY",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp)),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.20),
                                    borderRadius:
                                    BorderRadius.circular(15.px),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff99b7fc),
                                        blurRadius: 5.px,
                                        blurStyle: BlurStyle.outer,
                                        spreadRadius: -1,
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
