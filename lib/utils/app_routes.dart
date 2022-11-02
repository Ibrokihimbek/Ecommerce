import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/screens/forgot_page.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/login_page.dart';
import 'package:ecommerce_app/screens/main_page.dart';
import 'package:ecommerce_app/screens/register_page.dart';
import 'package:flutter/material.dart';

import '../screens/splash_page.dart';

abstract class RoutName {
  static const splash = 'splash';
  static const login = 'login';
  static const register = 'register';
  static const forgot = 'forgot';
  static const main = 'main';
  static const home = 'home';
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
      case RoutName.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
