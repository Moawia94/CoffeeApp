import 'package:coffee_app/app/shared/colors.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  MainCard(this.image, this.name, this.supName, this.price);
  final String name;
  final String supName;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 15, left: 20),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 230,
                width: 230,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    child: Stack(
                      children: [
                        Text(
                          supName,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Positioned(
                          top: 20,
                          child: Text(
                            price,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 16),
                          ),
                        ),
                        Positioned(
                          left: 150,
                          child: Container(
                            height: 40,
                            width: 40,
                            child: RawMaterialButton(
                              onPressed: () {},
                              fillColor: KbuttonColor,
                              shape: CircleBorder(),
                              elevation: 0,
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
