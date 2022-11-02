import 'package:ecommerce_app/utils/app_routes.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';
import 'package:ecommerce_app/widgets/button_widget.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLog = false;

  Future<bool> isLoggedIn() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    isLog = _pref.getBool("isLoggedIn") ?? false;
    return _pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();

    isLoggedIn();
    goNext();
  }

  void goNext() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacementNamed(
            context, isLog ? RoutName.main : RoutName.login);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_5956E9,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 30.sp,
              left: 51.sp,
              child: Text(
                'Find your\nGadget',
                style: fontRalewayW800(
                  appcolor: AppColors.C_FFFFFF,
                ).copyWith(fontSize: 65.sp),
              ),
            ),
            Positioned(
              top: 184.sp,
              right: 0.5.sp,
              left: 5.sp,
              child: SizedBox(
                width: 486.w,
                height: 486.h,
                child: Image.asset(AppImages.image_splash),
              ),
            ),
            Positioned(
              top: 428.sp,
              child: SizedBox(
                width: 486.w,
                height: 486.h,
                child: Image.asset(AppImages.image_splash_two),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
