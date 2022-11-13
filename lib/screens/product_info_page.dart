import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';
import 'package:ecommerce_app/widgets/post_indicator_widget.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/button_widget.dart';

class ProductInfoPage extends StatefulWidget {
  ProductsModel productInfo;
  ProductInfoPage({super.key, required this.productInfo});

  @override
  State<ProductInfoPage> createState() => _ProductInfoPageState();
}

List<ProductsModel> addBasket = [];

class _ProductInfoPageState extends State<ProductInfoPage> {
  int currentIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity.w,
                height: 350.h,
                color: AppColors.C_E5E5E5,
                child: Column(
                  children: [
                    SizedBox(height: 33.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 33).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back),
                          ),
                          SvgPicture.asset(AppImages.icon_heart),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 230.h,
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        physics: const BouncingScrollPhysics(),
                        controller: pageController,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return productInfoWidget(widget.productInfo);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20).r,
                      child: PostIndicatorWidget(currentIndex: currentIndex),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 600.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                  color: AppColors.C_FFFFFF,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Text(
                        widget.productInfo.productName,
                        style: fontRalewayW600(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 28.sp),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Colors',
                        style: fontRalewayW700(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 17.sp),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          colorButtonWidget(
                              colorProduct: AppColors.C_7485C1,
                              colorName: 'Sky Blue'),
                          colorButtonWidget(
                              colorProduct: AppColors.C_C9A19C,
                              colorName: 'Rose Gold'),
                          colorButtonWidget(
                              colorProduct: AppColors.C_A1C89B,
                              colorName: 'Green'),
                        ],
                      ),
                      SizedBox(height: 39.h),
                      Text(
                        widget.productInfo.productModel,
                        style: fontRalewayW700(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 17.sp),
                      ),
                      SizedBox(height: 7.h),
                      Text(
                        widget.productInfo.description,
                        style: fontRalewayW400(appcolor: AppColors.C_868686)
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Text(
                            'Full description',
                            style:
                                fontRalewayW700(appcolor: AppColors.C_5956E9),
                          ),
                          SizedBox(width: 7.w),
                          SvgPicture.asset(AppImages.icon_arrow),
                        ],
                      ),
                      SizedBox(height: 33.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: fontRalewayW400(appcolor: AppColors.C_000000)
                                .copyWith(fontSize: 17.sp),
                          ),
                          Text(
                            '\$ ${widget.productInfo.price}',
                            style: fontRalewayW700(appcolor: AppColors.C_5956E9)
                                .copyWith(fontSize: 18.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 32.h),
                      Center(
                        child: buttonLarge(
                          onTap: () {
                            if (addBasket.contains(widget.productInfo) ==
                                false) {
                              addBasket.add(widget.productInfo);
                            }
                          },
                          buttonName: 'Add to basket',
                          buttonColor: AppColors.C_5956E9,
                          buttonNameColor: AppColors.C_FFFFFF,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container colorButtonWidget(
      {required Color colorProduct, required String colorName}) {
    return Container(
      width: 110.w,
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.C_000000)),
      child: Row(
        children: [
          SizedBox(width: 13.w),
          Container(
            width: 16.w,
            height: 16.h,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: colorProduct),
          ),
          SizedBox(width: 8.w),
          Text(
            colorName,
            style: fontRalewayW700(appcolor: AppColors.C_000000)
                .copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget productInfoWidget(product) {
    return Image.asset(product.imageName);
  }
}
