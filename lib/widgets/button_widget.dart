import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buttonLarge({
  required VoidCallback onTap,
  required String buttonName,
  required Color buttonColor,
  required Color buttonNameColor,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: 314.w,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          buttonName,
          style: fontRalewayW700(appcolor: buttonNameColor)
              .copyWith(fontSize: 20.sp),
        ),
      ),
    ),
  );
}

InkWell buttonForText({
  required String buttonName,
  required Color textColor,
  required var sizeText,
  required VoidCallback onTap
}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      buttonName,
      style:
          fontRalewayW600(appcolor: textColor).copyWith(fontSize: sizeText),
    ),
  );
}
