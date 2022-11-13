import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class ProductsWidget extends StatefulWidget {
  ProductsModel products;
  VoidCallback onTap;
  ProductsWidget({super.key, required this.products, required this.onTap});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, top: 120).r,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: 210.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: AppColors.C_FFFFFF),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -95.sp,
                left: 22.sp,
                child: Container(
                  width: 180.w,
                  height: 180.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(widget.products.imageName),
                        fit: BoxFit.scaleDown),
                  ),
                ),
              ),
              Positioned(
                top: 100.sp,
                left: 35.sp,
                child: Column(
                  children: [
                    Text(
                      widget.products.productName,
                      textAlign: TextAlign.center,
                      style: fontRalewayW600(appcolor: AppColors.C_000000)
                          .copyWith(fontSize: 22.sp),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      widget.products.productModel,
                      textAlign: TextAlign.center,
                      style: fontRalewayW600(appcolor: AppColors.C_868686)
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      '\$ ${widget.products.price}',
                      textAlign: TextAlign.center,
                      style: fontRalewayW700(appcolor: AppColors.C_5956E9)
                          .copyWith(fontSize: 17.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
