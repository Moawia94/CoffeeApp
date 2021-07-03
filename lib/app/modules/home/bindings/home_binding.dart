import 'package:coffee_app/app/modules/coffeePage/controllers/coffee_page_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<CoffeePageController>(
      () => CoffeePageController(),
    );
  }
}
