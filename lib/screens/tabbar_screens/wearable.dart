import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/utils/app_routes.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/products_widget.dart';

class WearablePage extends StatelessWidget {
  const WearablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: SafeArea(
        child: SizedBox(
          height: 370.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: ProductsModel.watchs.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return ProductsWidget(
                products: ProductsModel.watchs[index],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RoutName.productInfo,
                    arguments: {'productInfo': ProductsModel.watchs[index]},
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
