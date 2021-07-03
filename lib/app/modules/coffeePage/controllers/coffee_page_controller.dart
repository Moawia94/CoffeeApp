import 'package:coffee_app/app/data/demoData.dart';
import 'package:coffee_app/app/modules/coffeePage/model/coffee.dart';
import 'package:coffee_app/app/modules/coffeePage/model/popularCoffee.dart';
import 'package:get/get.dart';

class CoffeePageController extends GetxController {
  List<Coffee> coffee = [];
  List<PopCoffee> popularCoffee = [];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    coffee = CoffeeData().GetCoffeeList();
    popularCoffee = PopularCoffeeData().GetPopularCoffeeList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
