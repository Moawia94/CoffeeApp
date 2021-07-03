import 'package:coffee_app/app/modules/coffeePage/views/buildCoffeeCard.dart';
import 'package:coffee_app/app/modules/coffeePage/views/buildPopularCoffe.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coffee_page_controller.dart';

class CoffeePageView extends GetView<CoffeePageController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 440,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: controller.coffee
                  .map((coffee) => GestureDetector(
                        onTap: () {},
                        child: BuildCoffeeCard(
                            coffee, controller.coffee.indexOf(coffee)),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Popular',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 200,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: controller.popularCoffee
                    .map((popularCoffee) => GestureDetector(
                          onTap: () {},
                          child: BuildPopularCoffeeCard(popularCoffee,
                              controller.popularCoffee.indexOf(popularCoffee)),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
