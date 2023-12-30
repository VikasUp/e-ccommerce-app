import 'package:get/instance_manager.dart';
import 'package:new_app/services/ApiService.dart';
import 'package:new_app/services/BaseProvider.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseProvider(), permanent: true);
    Get.put(ApiService(Get.find()), permanent: true);
  }
}
