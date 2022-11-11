import 'package:ecommerce_app/screens/search_page.dart';
import 'package:ecommerce_app/screens/tabbar_screens/drones.dart';
import 'package:ecommerce_app/screens/tabbar_screens/laptops.dart';
import 'package:ecommerce_app/screens/tabbar_screens/phones.dart';
import 'package:ecommerce_app/screens/tabbar_screens/wearable.dart';
import 'package:ecommerce_app/utils/app_routes.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:ecommerce_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 47).r,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppImages.icon_more),
                    SizedBox(width: 36.w),
                    InkWell(
                      borderRadius: BorderRadius.circular(30.r),
                      onTap: () {
                        Navigator.pushNamed(context, RoutName.search);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.C_868686),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          width: 265.w,
                          height: 60.h,
                          child: Row(
                            children: [
                              SizedBox(width: 20.w),
                              SvgPicture.asset(AppImages.icon_search),
                              SizedBox(width: 15.w),
                              Text(
                                'search',
                                style: fontRalewayW600(
                                  appcolor: AppColors.C_868686,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 55.h),
                Text(
                  'Order online\ncollect in store',
                  style: fontRalewayW700(appcolor: AppColors.C_000000)
                      .copyWith(fontSize: 34.sp),
                ),
                SizedBox(height: 55.h),
                tabbar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tabbar() {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            labelPadding: const EdgeInsets.symmetric(horizontal: 5).r,
            labelStyle: fontRalewayW600(appcolor: AppColors.C_000000)
                .copyWith(fontSize: 14.sp),
            tabs: const [
              Tab(
                text: 'Wearable',
              ),
              Tab(
                text: 'Laptos',
              ),
              Tab(
                text: 'Phones',
              ),
              Tab(
                text: 'Drones',
              ),
            ],
          ),
          Container(
            height: 400.h,
            child: const TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                WearablePage(),
                LaptopsPage(),
                PhonesPage(),
                DronesPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
