import 'package:ecommerce_app/screens/tabbar_screens/wearable.dart';
import 'package:ecommerce_app/widgets/products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/product_model.dart';
import '../../utils/app_routes.dart';
import '../../utils/colors.dart';
import '../../widgets/style_widget.dart';

class PhonesPage extends StatelessWidget {
  const PhonesPage({super.key});

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
            itemCount: ProductsModel.phones.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return ProductsWidget(
                products: ProductsModel.phones[index],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RoutName.productInfo,
                    arguments: {'productInfo': ProductsModel.phones[index]},
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
