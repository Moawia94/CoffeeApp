import 'package:get/get.dart';

class DetailsController extends GetxController {
  final count = 1.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void decrecment() => count.value--;
}
