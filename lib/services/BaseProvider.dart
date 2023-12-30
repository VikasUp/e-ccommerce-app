import 'package:get/get_connect.dart';
import 'package:new_app/ApiConstants/apiconstants.dart';
import 'package:new_app/services/Networking/interceptor/RequestInterceptor.dart';
import 'package:new_app/services/ResponseInterceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
