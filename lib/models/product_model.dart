import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';

class ProductsModel {
  String imageName;
  String productName;
  String productModel;
  String description;
  int price;
  int count;

  ProductsModel(
      {required this.description,
      required this.imageName,
      required this.productName,
      required this.productModel,
      required this.price,
      required this.count});

  static List<ProductsModel> watchs = [
    ProductsModel(
      description:
          'Apple Watch is a wearable smartwatch that allows users to accomplish a variety of tasks, including making phone calls, sending text messages and reading email. Apple released the Apple Watch on April 24, 2015.',
      imageName: AppImages.image_apple_watch,
      productName: 'Apple Watch',
      productModel: 'Series 6 . Red',
      price: 359,
      count: 0,
    ),
    ProductsModel(
      description:
          'The Galaxy Watch is a smartwatch that can analyse your exercise pattern, manage your health and allows you to use a variety of convenient apps for making phone calls and playing music. By rotating the bezel, you can access convenient features quickly and easily.',
      imageName: AppImages.image_samsung_watch,
      productName: 'SAMSUNG\nGalaxy Watch',
      productModel: 'Active. Green',
      price: 159,
      count: 0,
    ),
    ProductsModel(
      description:
          'As for the specs and feature, the smartwatch brings a rectangular 1.4-inch LCD display, 200+ watch faces, 5ATM water-resistance, a heart-rate monitor, and a SpO2 sensor. Moreover, it offers 10-days of battery life with 11 sports modes.',
      imageName: AppImages.image_redmi_watch,
      productName: 'Redmi Smart\nBand',
      productModel: 'Series 4. Black',
      price: 125,
      count: 0,
    ),
    ProductsModel(
      description:
          'A rugged, water-resistant wristwatch that includes features such as an alarm, stopwatch, compass, heart rate monitor, tachymeter (rotating bezel for calculating speed), thermometer and tide indicator (for divers).',
      imageName: AppImages.image_sport_watch,
      productName: 'Sport Watch',
      productModel: 'Active. black',
      price: 200,
      count: 0,
    ),
  ];

  static List<ProductsModel> laptops = [
    ProductsModel(
      description:
          'Acer Nitro 5 AN515 is a Windows 10 laptop with a 15.60-inch display that has a resolution of 1920x1080 pixels. It is powered by a Core i5 processor and it comes with 8GB of RAM.',
      imageName: AppImages.image_acer,
      productName: 'Acer Laptop',
      productModel: 'Nitro Gaming',
      price: 800,
      count: 0,
    ),
    ProductsModel(
      description:
          'Geared for serious gaming and real-world durability, the TUF Gaming A15 is a fully-loaded Windows 10 Pro gaming laptop that can carry you to victory. Powered by the latest AMD Ryzen™ 9 CPU and GeForce RTX™ 2060 GPU.',
      imageName: AppImages.image_asus,
      productName: 'Asus Laptop',
      productModel: 'TUF Gaming',
      price: 120,
      count: 0,
    ),
    ProductsModel(
      description:
          'Design Less to carry.More to Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure.',
      imageName: AppImages.image_macbook,
      productName: 'MacBook Air',
      productModel: 'M2 chip model',
      price: 195,
      count: 0,
    ),
    ProductsModel(
      description:
          'The Victus 16.1 inch Gaming Laptop PC has what you need to play. It has up to an 11th Generation Intel® Core™ i7 processor1 or AMD Ryzen™ 7 processor1, powerful NVIDIA® GeForce RTX™ graphics and upgraded cooling system.',
      imageName: AppImages.image_victus,
      productName: 'HP Laptop',
      productModel: 'Victus Gamin',
      price: 950,
      count: 0,
    ),
  ];

  static List<ProductsModel> phones = [
    ProductsModel(
      description:
          '6.1" flat FHD+ Dynamic AMOLED 2X Infinity-O Display (2340x1080) 425 ppi HDR10+ certified 120Hz refresh rate',
      imageName: AppImages.image_samsung,
      productName: 'SAMSUNG\nGalaxy Phone',
      productModel: 'S22 +',
      price: 1200,
      count: 0,
    ),
    ProductsModel(
      description:
          'It comes with 8GB of RAM. The phone packs 256GB of internal storage As far as the cameras are concerned.',
      imageName: AppImages.image_xiaomi,
      productName: 'xiaomi Phone',
      productModel: 'Note 12 Discovery',
      price: 700,
      count: 0,
    ),
    ProductsModel(
      description:
          "The iPhone 14 looks identical to the iPhone 13, but there's a new 6.7-inch model called the iPhone 14 Plus. Under-the-hood improvements include 6GB of RAM, a 5-core GPU, Bluetooth 5.3,",
      imageName: AppImages.image_iphone,
      productName: 'iPhone Phone',
      productModel: '14 pro max',
      price: 1800,
      count: 0,
    ),
    ProductsModel(
      description:
          'Ultra Aperture XMAGE Camera | Durable Kunlun Glass, Up to 6-Metre Water Resistance | HUAWEI SuperCharge, SuperHub, SuperStorage',
      imageName: AppImages.image_huawei,
      productName: 'Huawei Phone',
      productModel: 'Mate 50 Pro',
      price: 850,
      count: 0,
    ),
  ];

  static List<ProductsModel> drones = [
    ProductsModel(
      description:
          'Accuracy without GCPs – 3 cm horizontally / 5 cm vertically High Efficiency – 3 km2 covered in a single',
      imageName: AppImages.image_aremotus,
      productName: 'Aeromotus',
      productModel: 'V56 model',
      price: 1250,
      count: 0,
    ),
    ProductsModel(
      description:
          'Accuracy without GCPs – 3 cm horizontally / 5 cm vertically High Efficiency – 3 km2 covered in a single',
      imageName: AppImages.image_jouav,
      productName: 'JOUAV',
      productModel: 'H1365 model',
      price: 800,
      count: 0,
    ),
    ProductsModel(
      description:
          'Accuracy without GCPs – 3 cm horizontally / 5 cm vertically High Efficiency – 3 km2 covered in a single',
      imageName: AppImages.image_parrot,
      productName: 'Parrot',
      productModel: 'Toy model',
      price: 200,
      count: 0,
    ),
    ProductsModel(
      description:
          'Accuracy without GCPs – 3 cm horizontally / 5 cm vertically High Efficiency – 3 km2 covered in a single',
      imageName: AppImages.image_uvify,
      productName: 'UVify',
      productModel: 'S784 model',
      price: 655,
      count: 0,
    ),
  ];
  static List<List<ProductsModel>> all_product = [
    ProductsModel.watchs,
    ProductsModel.drones,
    ProductsModel.laptops,
    ProductsModel.phones,
  ];
}
