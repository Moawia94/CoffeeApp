import 'package:coffee_app/app/modules/coffeePage/model/coffee.dart';
import 'package:coffee_app/app/shared/colors.dart';
import 'package:coffee_app/app/shared/imagesSlider.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  final Coffee coffeeDetails = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        color: Get.isDarkMode ? KDarkBackgound : Colors.white,
        minHeight: 330,
        borderRadius: BorderRadius.circular(20),
        isDraggable: false,
        panel: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 20,
                  child: Divider(
                    color: Colors.grey[300],
                    thickness: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  coffeeDetails.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, right: 50),
                child: Text(
                  coffeeDetails.details,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Qt',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          ElevatedButton(
                            onPressed: () => controller.decrecment(),
                            child: Text(
                              '-',
                              style: TextStyle(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: CircleBorder(),
                                minimumSize: Size(25, 25),
                                primary: Get.isDarkMode
                                    ? KCardColor
                                    : Colors.grey[200]),
                          ),
                          Obx(() => Text(controller.count.string)),
                          ElevatedButton(
                            onPressed: () => controller.increment(),
                            child: Text(
                              '+',
                              style: TextStyle(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: CircleBorder(),
                                minimumSize: Size(25, 25),
                                primary: Get.isDarkMode
                                    ? KCardColor
                                    : Colors.grey[200]),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      coffeeDetails.price,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add to Order',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: KbuttonColor,
                    minimumSize: Size(Get.width, 50)),
              )
            ],
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              ImagesSlider(
                images: coffeeDetails.images,
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () => Get.back(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
