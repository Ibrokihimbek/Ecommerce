import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';
import 'package:ecommerce_app/widgets/button_widget.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:ecommerce_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _key = GlobalKey<FormState>();

  bool isPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_5956E9,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: _key,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.C_5956E9,
                    image: DecorationImage(
                      image: AssetImage(AppImages.image_login_page),
                      fit: BoxFit.contain,
                    ),
                  ),
                  width: double.infinity,
                  height: 249.h,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 75, left: 50).r,
                    child: Text(
                      'Register',
                      style: fontRalewayW800(appcolor: AppColors.C_FFFFFF)
                          .copyWith(fontSize: 55.sp),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                  ),
                  width: double.infinity.w,
                  height: 615.5.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 36.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.icon_profile,
                              color: AppColors.C_868686,
                            ),
                            SizedBox(width: 13.w),
                            Text(
                              'Username',
                              style:
                                  fontRalewayW600(appcolor: AppColors.C_868686)
                                      .copyWith(fontSize: 15.sp),
                            )
                          ],
                        ),
                        textFieldName(hinttext: 'Username'),
                        SizedBox(height: 42.h),
                        Row(
                          children: [
                            SvgPicture.asset(AppImages.icon_email),
                            SizedBox(width: 13.w),
                            Text(
                              'Email',
                              style:
                                  fontRalewayW600(appcolor: AppColors.C_868686)
                                      .copyWith(fontSize: 15.sp),
                            )
                          ],
                        ),
                        SizedBox(height: 12.h),
                        textFieldName(hinttext: 'Email'),
                        SizedBox(height: 42.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.icon_lock,
                            ),
                            SizedBox(width: 13.w),
                            Text(
                              'Password',
                              style:
                                  fontRalewayW600(appcolor: AppColors.C_868686)
                                      .copyWith(fontSize: 15.sp),
                            )
                          ],
                        ),
                        SizedBox(height: 12.h),
                        textFieldPassword(
                          isPass: isPass,
                          hinttext: 'Password',
                          onTap: () {
                            setState(
                              () {
                                isPass = !isPass;
                              },
                            );
                          },
                        ),
                        SizedBox(height: 60.h),
                        buttonLarge(
                          onTap: () {
                            if (_key.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              saveLogin(context);
                            }
                          },
                          buttonName: 'Register',
                          buttonColor: AppColors.C_5956E9,
                          buttonNameColor: AppColors.C_FFFFFF,
                        ),
                        SizedBox(height: 19.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool("isLoggedIn", true);

    Navigator.pushNamedAndRemoveUntil(context, RoutName.main, (route) => false);
  }
}
