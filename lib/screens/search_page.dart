// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce_app/service/search_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/product_model.dart';
import '../utils/app_routes.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../widgets/products_widget.dart';
import '../widgets/style_widget.dart';
import '../widgets/textfield_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ProductsModel> found = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 47).r,
                child: Row(
                  children: [
                    SvgPicture.asset(AppImages.icon_back_arrow),
                    SizedBox(width: 36.w),
                    SizedBox(
                      width: 265.w,
                      height: 60.h,
                      child: TextFieldOfBorder(
                        hinttext: 'Search',
                        iconName: AppImages.icon_search,
                        onchanged: (value) => setState(
                          () {
                            found = searchByName(value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              found.isEmpty
                  ? Container()
                  : Center(
                      child: Text(
                        'Found ${found.length} results',
                        style: fontRalewayW600(appcolor: AppColors.C_000000)
                            .copyWith(fontSize: 28.sp),
                      ),
                    ),
              SizedBox(height: found.isEmpty ? null : 100.h),
              SizedBox(
                child: found.isEmpty
                    ? Column(
                        children: [
                          Image.asset(
                            AppImages.image_search_background,
                          ),
                          Text(
                            'Item not found',
                            style: fontRalewayW600(appcolor: AppColors.C_000000)
                                .copyWith(
                              fontSize: 28.sp,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30).r,
                            child: Text(
                              'Try a more generic search term or try looking for alternative products.',
                              textAlign: TextAlign.center,
                              style: fontRalewayW400(
                                      appcolor:
                                          AppColors.C_000000.withOpacity(0.57))
                                  .copyWith(
                                fontSize: 17.sp,
                              ),
                            ),
                          )
                        ],
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        itemCount: found.length,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 80,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return ProductItem(
                            found[index],
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ProductItem(ProductsModel products) {
    return Padding(
      padding: const EdgeInsets.all(16).r,
      child: InkWell(
        borderRadius: BorderRadius.circular(20.sp),
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
          Navigator.pushNamed(
            context,
            RoutName.productInfo,
            arguments: {'productInfo': products},
          );
        },
        child: Container(
          width: 210.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: AppColors.C_FFFFFF),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -80.sp,
                left: 18.sp,
                child: Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(products.imageName),
                        fit: BoxFit.scaleDown),
                  ),
                ),
              ),
              Positioned(
                top: 70.sp,
                left: 35.sp,
                child: Column(
                  children: [
                    Text(
                      products.productName,
                      textAlign: TextAlign.center,
                      style: fontRalewayW600(appcolor: AppColors.C_000000)
                          .copyWith(fontSize: 18.sp),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      products.productModel,
                      textAlign: TextAlign.center,
                      style: fontRalewayW600(appcolor: AppColors.C_868686)
                          .copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      products.price,
                      textAlign: TextAlign.center,
                      style: fontRalewayW700(appcolor: AppColors.C_5956E9)
                          .copyWith(fontSize: 15.sp),
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
