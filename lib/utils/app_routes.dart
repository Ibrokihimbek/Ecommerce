import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/screens/checkout_page.dart';
import 'package:ecommerce_app/screens/forgot_page.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/login_page.dart';
import 'package:ecommerce_app/screens/main_page.dart';
import 'package:ecommerce_app/screens/product_info_page.dart';
import 'package:ecommerce_app/screens/profile_page.dart';
import 'package:ecommerce_app/screens/register_page.dart';
import 'package:ecommerce_app/screens/search_page.dart';
import 'package:ecommerce_app/screens/success_payment_page.dart';
import 'package:flutter/material.dart';

import '../screens/splash_page.dart';

abstract class RoutName {
  static const splash = 'splash';
  static const login = 'login';
  static const register = 'register';
  static const forgot = 'forgot';
  static const main = 'main';
  static const home = 'home';
  static const productInfo = 'productInfo';
  static const search = 'search';
  static const checkout = 'checkout';
  static const successPayment = 'successPayment';
  static const profile = 'profile';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutName.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case RoutName.login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case RoutName.register:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case RoutName.forgot:
        return MaterialPageRoute(builder: (_) => ForgotPage());
      case RoutName.main:
        return MaterialPageRoute(builder: (_) => MainPage());
      case RoutName.checkout:
        return MaterialPageRoute(builder: (_) => CheckoutPaage());
      case RoutName.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutName.profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case RoutName.successPayment:
        return MaterialPageRoute(builder: (_) => SuccesPaymentPage());
      case RoutName.productInfo:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => ProductInfoPage(
            productInfo: args['productInfo'],
          ),
        );
      case RoutName.search:
        return MaterialPageRoute(builder: (_) => SearchPage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
