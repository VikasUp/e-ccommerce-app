



import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

class ThemesController extends GetxController {
  final storage = GetStorage();

  var theme = 'light';

  @override
  void onInit() {
    super.onInit();

    getThemeState();
  }

  getThemeState() {
    if (storage.read('theme') != null) {
      return setTheme(storage.read('theme'));
    } 
    
    setTheme('light');
  }

  void setTheme(String value) {
    theme = value;
    storage.write('theme', value);

    if (value == 'system') Get.changeThemeMode(ThemeMode.system);
    if (value == 'light') Get.changeThemeMode(ThemeMode.light);
    if (value == 'dark') Get.changeThemeMode(ThemeMode.dark);

    update();
  }
}