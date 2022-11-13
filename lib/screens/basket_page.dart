import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/screens/product_info_page.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

int sum = 0;
int count = 0;

class _BasketPageState extends State<BasketPage> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppImages.icon_back_arrow, width: 30.w),
                  Text(
                    'Basket',
                    style: fontRalewayW700(appcolor: AppColors.C_000000)
                        .copyWith(fontSize: 18.sp),
                  ),
                  SvgPicture.asset(AppImages.icon_delete, width: 20.w),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50).r,
              child: Container(
                width: 264.w,
                height: 39.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.C_D3F2FF,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10).r,
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImages.icon_notification),
                      Text(
                        'Delivery for FREE until the end of the month',
                        style: fontRalewayW600(
                          appcolor: AppColors.C_000000,
                        ).copyWith(fontSize: 10.sp),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              width: double.infinity.w,
              height: 455,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: addBasket.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return showBasket(
                    addBasket[index],
                  );
                }),
              ),
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50).r,
              child: Row(
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
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: double.infinity,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.C_5956E9,
                ),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: fontRalewayW700(appcolor: AppColors.C_FFFFFF)
                        .copyWith(fontSize: 20.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showBasket(ProductsModel addBasket) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8).r,
      child: Container(
        height: 140.h,
        width: 314.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.C_FFFFFF,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 80.w,
              height: 105.h,
              child: Image.asset(addBasket.imageName),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 24).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    addBasket.productName,
                    style: fontRalewayW600(appcolor: AppColors.C_000000)
                        .copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    '\$ ${addBasket.price}',
                    style: fontRalewayW600(appcolor: AppColors.C_5956E9)
                        .copyWith(fontSize: 15.sp),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Text(
                        'Quantity',
                        style: fontRalewayW400(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 13.sp),
                      ),
                      SizedBox(width: 12.w),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: AppColors.C_7DCCEC),
                          child: Center(
                            child: Text(
                              '-',
                              style:
                                  fontRalewayW600(appcolor: AppColors.C_FFFFFF)
                                      .copyWith(fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        addBasket.count.toString(),
                        style: fontRalewayW600(appcolor: AppColors.C_000000),
                      ),
                      SizedBox(width: 6.w),
                      InkWell(
                        onTap: () {
                          setState(() {
                            addBasket.count += 1;
                            sum += addBasket.price;
                          });
                        },
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: AppColors.C_7DCCEC),
                          child: Center(
                            child: Text(
                              '+',
                              style:
                                  fontRalewayW600(appcolor: AppColors.C_FFFFFF)
                                      .copyWith(fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
