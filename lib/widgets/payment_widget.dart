import 'package:ecommerce_app/screens/basket_page.dart';
import 'package:ecommerce_app/screens/product_info_page.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_routes.dart';
import '../utils/images.dart';
import 'button_widget.dart';

class PaymentWidget extends StatefulWidget {
  int selected;
  // String customerName;
  PaymentWidget({super.key, required this.selected});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50).r,
      height: 500.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        color: AppColors.C_FFFFFF,
      ),
      child: Column(
        children: [
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Confirm and pay',
                style: fontRalewayW600(appcolor: AppColors.C_000000)
                    .copyWith(fontSize: 17.sp),
              ),
              Row(
                children: [
                  Text(
                    'Products: ',
                    style: fontRalewayW600(appcolor: AppColors.C_868686)
                        .copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    '${addBasket.length}',
                    style: fontRalewayW600(appcolor: AppColors.C_000000)
                        .copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 45.h),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18).r,
            height: 180.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.C_E5E5E5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My credit card',
                      style: fontRalewayW600(appcolor: AppColors.C_000000)
                          .copyWith(fontSize: 17.sp),
                    ),
                    SizedBox(
                      width: 62.w,
                      height: 40.h,
                      child: Image.asset(cardImage()),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                Text(
                  '**** **** **** 1234',
                  style: fontRalewayW400(appcolor: AppColors.C_000000)
                      .copyWith(fontSize: 37.sp),
                ),
                SizedBox(height: 17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rosina Doe',
                      style: fontRalewayW600(appcolor: AppColors.C_868686)
                          .copyWith(fontSize: 15.sp),
                    ),
                    Text(
                      '04/26',
                      style: fontRalewayW600(appcolor: AppColors.C_868686)
                          .copyWith(fontSize: 15.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h),
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
                Navigator.pushNamed(context, RoutName.successPayment);
              },
              buttonName: 'Pay now',
              buttonColor: AppColors.C_5956E9,
              buttonNameColor: AppColors.C_FFFFFF),
        ],
      ),
    );
  }

  cardImage() {
    if (widget.selected == 1) {
      return AppImages.image_card_visa;
    } else if (widget.selected == 2) {
      return AppImages.image_card_mastercard;
    } else {
      return AppImages.image_card_bank;
    }
  }
}
