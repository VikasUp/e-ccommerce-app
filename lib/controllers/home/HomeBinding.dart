import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_app/controllers/home/HomeControllers.dart';
import 'package:new_app/providers/CategoryProvider.dart';
import 'package:new_app/providers/OfferProvider.dart';
import 'package:new_app/providers/ProductRepository.dart';
import 'package:new_app/repositoris/CategoryRepository.dart';
import 'package:new_app/repositoris/OfferRepository.dart';
import 'package:new_app/repositoris/ProductRepository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferRepository>(() => OfferRepository(Get.find()));
    Get.lazyPut<OfferProvider>(() => OfferProvider(Get.find()));

    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
    Get.lazyPut<CategoryProvider>(() => CategoryProvider(Get.find()));
    
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
