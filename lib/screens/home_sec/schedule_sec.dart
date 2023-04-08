import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScheduleSec extends StatelessWidget {
  ScheduleSec({Key? key}) : super(key: key);

  int scheduleNum = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text("Courses Schedule",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.5.h),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("JAN")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("FEB")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("MAR")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("APR")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("MAY")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("JUN")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("JUL")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("AGU")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("SEP")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("OCT")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("NOV")),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 5.h,
                        child: Center(child: Text("DEC")),
                      ),
                    ],
                  ),
                  SizedBox(width: 1.w,),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Text("start course 1")),
                      ),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Center(child: Text("start course 1")),),
                      ),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Text("start course 1")),
                      ),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Text("start course 1")),
                      ),
                    ],
                  ),
                  SizedBox(width: 1.w,),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Center(child: Text("start course 1")),),
                      ),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Text("start course 1")),
                      ),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Text("start course 1")),
                      ),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      SizedBox(width: 10.w,
                        height: 5.h,),
                      Container(
                        width: 10.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(8.px)
                        ),
                        child: Center(child: Text("start course 1")),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
