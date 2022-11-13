import 'package:ecommerce_app/screens/product_info_page.dart';
import 'package:ecommerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/images.dart';
import '../widgets/style_widget.dart';

class SuccesPaymentPage extends StatefulWidget {
  const SuccesPaymentPage({super.key});

  @override
  State<SuccesPaymentPage> createState() => _SuccesPaymentPageState();
}

class _SuccesPaymentPageState extends State<SuccesPaymentPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutName.main, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_FFFFFF,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 100.sp,
              left: 10.sp,
              child: Text(
                'The payment was made\nsuccessfully',
                textAlign: TextAlign.center,
                style: fontRalewayW800(
                  appcolor: AppColors.C_000000,
                ).copyWith(fontSize: 32.sp),
              ),
            ),
            Positioned(
              top: 200.sp,
              right: 5.sp,
              left: 5.sp,
              child: SizedBox(
                width: 486.w,
                height: 486.h,
                child: Image.asset(AppImages.gif_payment_success),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
