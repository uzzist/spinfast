import 'package:get/get.dart';
import 'package:spinfast/controllers/auth_controller/auth_controller.dart';
import 'package:spinfast/controllers/home_controller/home_controller.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    // TODO: implement dependencies
  }

}