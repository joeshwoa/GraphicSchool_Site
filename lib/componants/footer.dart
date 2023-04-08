import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xff301b50),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
        child: Row(
          children: [
            SizedBox(
                child: Image(image: AssetImage("assets/School.png")),
                width: 30.w,
                height: 30.h),
            SizedBox(
                width: 30.w,
                height: 30.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                  ],
                )),
            SizedBox(
                width: 30.w,
                height: 30.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                    Text("data", style: TextStyle(color: Colors.white)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
