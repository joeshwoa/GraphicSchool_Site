import 'dart:ui';

import 'package:flutter/material.dart';

Widget SiteButton ({required double height,required double width,required double borderRadius,required String name,required String iconPath,required VoidCallback onPressed})
{
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: MaterialButton(
      height: height,
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onLongPress: (){},
      onPressed: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
          child: Container(
            alignment: Alignment.center,
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(width: 2,color: Colors.white30)
            ),
            child: Text(name,style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    ),
  );
}