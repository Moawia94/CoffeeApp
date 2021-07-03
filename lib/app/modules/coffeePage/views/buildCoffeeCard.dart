import 'package:coffee_app/app/modules/coffeePage/model/coffee.dart';
import 'package:coffee_app/app/shared/mainCard.dart';
import 'package:flutter/material.dart';

Widget BuildCoffeeCard(Coffee coffee, [int? index]) {
  return MainCard(coffee.images[0], coffee.name, coffee.supName, coffee.price);
}
