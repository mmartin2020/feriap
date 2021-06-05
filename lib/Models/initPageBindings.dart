import 'package:Feriap/Models/initPageConroller.dart';
import 'package:get/get.dart';

class InitPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InitPageController());

  }
}
