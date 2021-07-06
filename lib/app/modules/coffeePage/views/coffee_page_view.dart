import 'package:coffee_app/app/modules/coffeePage/views/buildCoffeeCard.dart';
import 'package:coffee_app/app/modules/coffeePage/views/buildPopularCoffe.dart';
import 'package:coffee_app/app/routes/app_pages.dart';
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.coffee.length,
              itemBuilder: (context, index) => GestureDetector(
                child: BuildCoffeeCard(controller.coffee[index]),
                onTap: () => Get.toNamed(Routes.DETAILS,
                    arguments: controller.coffee[index]),
              ),
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
