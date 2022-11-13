import 'package:ecommerce_app/screens/basket_page.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/payment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_routes.dart';
import '../utils/images.dart';
import '../widgets/button_widget.dart';
import '../widgets/style_widget.dart';

class CheckoutPaage extends StatefulWidget {
  const CheckoutPaage({super.key});

  @override
  State<CheckoutPaage> createState() => _CheckoutPaageState();
}

class _CheckoutPaageState extends State<CheckoutPaage> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 33, right: 33, top: 50).r,
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.icon_back_arrow, width: 30.w),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.24.w,
                  ),
                  Text(
                    'Checkout',
                    style: fontRalewayW700(appcolor: AppColors.C_000000)
                        .copyWith(fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping information',
                        style: fontRalewayW600(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 17.sp),
                      ),
                      Text(
                        'change',
                        style: fontRalewayW600(appcolor: AppColors.C_5956E9)
                            .copyWith(fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 180.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.C_FFFFFF,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 34, top: 23).r.r,
                      child: Column(
                        children: [
                          shippingInformation(
                              AppImages.icon_profile, 'Rosina Doe'),
                          SizedBox(height: 23.h),
                          shippingInformation(AppImages.icon_location,
                              '43 Oxford Road M13 4GR Manchester, UK'),
                          SizedBox(height: 23.h),
                          shippingInformation(
                              AppImages.icon_call, '+234 9011039271'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Text(
                    'Payment Method',
                    style: fontRalewayW600(appcolor: AppColors.C_000000)
                        .copyWith(fontSize: 17.sp),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 240.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.C_FFFFFF,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14, top: 23).r.r,
                      child: Column(
                        children: [
                          paymentMethod(1, AppImages.image_card_visa),
                          SizedBox(height: 23.h),
                          paymentMethod(2, AppImages.image_card_mastercard),
                          SizedBox(height: 23.h),
                          paymentMethod(3, AppImages.image_card_bank),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: fontRalewayW400(appcolor: AppColors.C_000000),
                      ),
                      Text(
                        '\$ $sum',
                        style: fontRalewayW700(appcolor: AppColors.C_5956E9)
                            .copyWith(fontSize: 22.sp),
                      )
                    ],
                  ),
                  SizedBox(height: 30.h),
                  buttonLarge(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return PaymentWidget(
                              selected: selected,
                            );
                          },
                        );
                      },
                      buttonName: 'Confirm and pay',
                      buttonColor: AppColors.C_5956E9,
                      buttonNameColor: AppColors.C_FFFFFF),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row paymentMethod(int value, String cardImage) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: selected,
          onChanged: ((value) {
            setState(
              () {
                selected = value as int;
              },
            );
          }),
        ),
        SizedBox(width: 62.w, height: 40.h, child: Image.asset(cardImage)),
        SizedBox(width: 16.w),
        SizedBox(
          width: 150.w,
          child: Text(
            '**** **** **** 1234',
            style: fontRalewayW400(appcolor: AppColors.C_000000)
                .copyWith(fontSize: 17.sp),
          ),
        ),
      ],
    );
  }

  Widget shippingInformation(String iconName, String text) {
    return Row(
      children: [
        SvgPicture.asset(iconName),
        SizedBox(width: 16.w),
        SizedBox(
          width: 240.w,
          child: Text(
            text,
            style: fontRalewayW400(appcolor: AppColors.C_000000)
                .copyWith(fontSize: 17.sp),
          ),
        ),
      ],
    );
  }
}
