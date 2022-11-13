import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/images.dart';
import '../widgets/style_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              SvgPicture.asset(AppImages.icon_back_arrow, width: 30.w),
              SizedBox(height: 16.h),
              Text(
                'My profile',
                style: fontRalewayW700(appcolor: AppColors.C_000000)
                    .copyWith(fontSize: 34.sp),
              ),
              SizedBox(height: 50.h),
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.C_FFFFFF,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -30.sp,
                      left: 10.sp,
                      right: 10.sp,
                      child: SizedBox(
                        width: 76.w,
                        height: 76.h,
                        child: Image.asset(AppImages.image_profile),
                      ),
                    ),
                    Positioned(
                      top: 63,
                      left: 130.sp,
                      child: Text(
                        'Rosina Doe',
                        style: fontRalewayW600(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 18.sp),
                      ),
                    ),
                    Positioned(
                        top: 98.sp,
                        left: 37.sp,
                        child: SvgPicture.asset(AppImages.icon_location)),
                    Positioned(
                      top: 96,
                      left: 71.sp,
                      right: 62.sp,
                      child: Text(
                        'Address: 43 Oxford Road M13 4GR Manchester, UK',
                        style: fontRalewayW400(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
              ),
              profileItem('Edit Profile'),
              profileItem('Shopping address'),
              profileItem('Order history'),
              profileItem('Cards'),
              profileItem('Notifications'),

            ],
          ),
        ),
      ),
    );
  }

  Container profileItem(String itemName) {
    return Container(
      margin: const EdgeInsets.only(top: 27).r,
      padding: const EdgeInsets.all(20).r,
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.C_FFFFFF,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: fontRalewayW600(appcolor: AppColors.C_000000)
                .copyWith(fontSize: 18.sp),
          ),
          SvgPicture.asset(AppImages.icoc_chevron_left),
        ],
      ),
    );
  }
}
