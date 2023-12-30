
import 'package:get/route_manager.dart';
import 'package:new_app/controllers/home/HomeBinding.dart';
import 'package:new_app/controllers/products/ProductBinding.dart';
import 'package:new_app/home/products/ProductPage.dart';
import 'package:new_app/home/tabs/HomePage.dart';
import 'package:new_app/views/authentication/LoginPage.dart';
import 'package:new_app/views/authentication/SplashPage.dart';

class Routes {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/splash', 
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/login', 
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/home', 
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/product/:id', 
      page: () => ProductPage(),
      binding: ProductBinding(),
    )
  ];
}
