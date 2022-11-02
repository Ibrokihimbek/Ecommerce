import 'package:ecommerce_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WearablePage extends StatefulWidget {
  const WearablePage({super.key});

  @override
  State<WearablePage> createState() => _WearablePageState();
}

class _WearablePageState extends State<WearablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 380.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: ProductsModel.watchs.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return WatchWidget(ProductsModel.watchs[index]);
            }),
          ),
        ),
      ),
    );
  }

  Widget WatchWidget(ProductsModel watch) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
      ],
    );
  }
}
