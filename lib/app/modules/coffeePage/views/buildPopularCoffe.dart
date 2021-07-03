import 'package:coffee_app/app/modules/coffeePage/model/popularCoffee.dart';
import 'package:coffee_app/app/shared/popularCard.dart';
import 'package:flutter/material.dart';

Widget BuildPopularCoffeeCard(PopCoffee popularCoffee, [int? index]) {
  return PopularCard(popularCoffee.images[0], popularCoffee.name,
      popularCoffee.supName, popularCoffee.price);
}
