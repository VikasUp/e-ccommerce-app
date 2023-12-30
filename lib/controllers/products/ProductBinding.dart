

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:new_app/controllers/products/ProductController.dart';
import 'package:new_app/providers/ProductRepository.dart';
import 'package:new_app/repositoris/ProductRepository.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {  
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}
