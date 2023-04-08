import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({Key? key}) : super(key: key);

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
        )
      ],
    );
  }
}
