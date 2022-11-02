import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/product_model.dart';
import '../../utils/colors.dart';
import '../../widgets/products_widget.dart';
import '../../widgets/style_widget.dart';

class DronesPage extends StatelessWidget {
  const DronesPage({super.key});

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
            itemCount: ProductsModel.drones.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return ProductsWidget(products: ProductsModel.drones[index]);
            }),
          ),
        ),
      ),
    );
  }
}
