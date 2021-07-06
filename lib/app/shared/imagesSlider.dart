import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ImagesSlider extends StatelessWidget {
  const ImagesSlider({required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(child: BuildBody());
  }

  ValueBuilder<int?> BuildBody() {
    return ValueBuilder<int?>(
      initialValue: 0,
      builder: (currentImage, updateFn) => Stack(
        children: [
          Container(
            child: BuildImages(updateFn),
          ),
          Positioned(
              top: 460,
              left: Get.width / 2 - 30,
              child: Row(
                children: images
                    .map((image) =>
                        BuildIndicator(images.indexOf(image) == currentImage))
                    .toList(),
              )),
        ],
      ),
    );
  }

  Widget BuildImages(ValueBuilderUpdateCallback<int> updateFn) {
    return Container(
      height: 530,
      child: PageView(
        physics: BouncingScrollPhysics(),
        onPageChanged: updateFn,
        children: images.map((path) {
          return Stack(
            children: [
              SizedBox(
                height: 530,
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              )
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget BuildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: isActive ? Colors.white : Color.fromRGBO(255, 255, 255, 0.5)),
    );
  }
}
