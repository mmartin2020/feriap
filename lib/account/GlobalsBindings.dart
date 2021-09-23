
import 'package:get/get.dart';

import 'Controllers/loginController.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
  
}

