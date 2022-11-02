import 'package:ecommerce_app/utils/images.dart';

class ProductsModel {
  String imageName;
  String productName;
  String productModel;
  String price;

  ProductsModel({
    required this.imageName,
    required this.productName,
    required this.productModel,
    required this.price,
  });

  static List<ProductsModel> watchs = [
    ProductsModel(
      imageName: AppImages.image_apple_watch,
      productName: 'Apple Watch',
      productModel: 'Series 6 . Red',
      price: '\$ 359',
    ),
    ProductsModel(
      imageName: AppImages.image_samsung_watch,
      productName: 'SAMSUNG Galaxy Watch',
      productModel: 'Active. Green',
      price: '\$ 159',
    ),
    ProductsModel(
      imageName: AppImages.image_redmi_watch,
      productName: 'Redmi Smart Band',
      productModel: 'Series 4. Black',
      price: '\$ 125',
    ),
    ProductsModel(
      imageName: AppImages.image_sport_watch,
      productName: 'Sport Watch',
      productModel: 'Active. black',
      price: '\$ 200',
    ),
  ];
}
