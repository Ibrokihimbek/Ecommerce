import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget textFieldName({required String hinttext}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) return 'Please enter your email';
    },
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      hintText: hinttext,
      hintStyle: fontRalewayW600(appcolor: AppColors.C_868686),
    ),
  );
}

Widget textFieldPassword({
  required String hinttext,
  required VoidCallback onTap,
  required bool isPass,
}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) return 'Please enter your pasword';
    },
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.visiblePassword,
    obscureText: isPass,
    decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: onTap,
          child: Text(
            'show',
            style: fontRalewayW600(appcolor: AppColors.C_5956E9)
                .copyWith(fontSize: 15.sp),
          ),
        ),
        hintText: hinttext,
        hintStyle: fontRalewayW600(appcolor: AppColors.C_868686)),
  );
}

Widget TextFieldOfBorder({required String hinttext, required String iconName}) {
  return TextField(
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      prefixIcon: Container(
        padding: const EdgeInsets.all(18).r,
        child: SvgPicture.asset(iconName),
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.r)),
      hintText: hinttext,
      hintStyle: fontRalewayW600(appcolor: AppColors.C_868686),
    ),
  );
}
