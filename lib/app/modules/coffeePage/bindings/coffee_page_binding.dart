import 'package:get/get.dart';

import '../controllers/coffee_page_controller.dart';

class CoffeePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoffeePageController>(
      () => CoffeePageController(),
    );
  }
}
