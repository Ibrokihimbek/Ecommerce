import 'package:ecommerce_app/screens/basket_page.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_routes.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pages = [
    HomePage(),
    Container(),
    Container(),
    BasketPage(),
    
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColors.C_E5E5E5,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(
            () {
              currentPageIndex = index;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 21.w,
                height: 21.h,
                child: SvgPicture.asset(AppImages.icon_home),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 21.w,
                height: 21.h,
                child: SvgPicture.asset(AppImages.icon_heart),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 21.w,
                height: 21.h,
                child: SvgPicture.asset(AppImages.icon_profile),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 21.w,
                height: 21.h,
                child: SvgPicture.asset(AppImages.icon_buy),
              ),
              label: ''),
        ],
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool("isLoggedIn", false);

    Navigator.pushReplacementNamed(context, RoutName.login);
  }
}
