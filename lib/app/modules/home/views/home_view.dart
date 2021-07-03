import 'package:coffee_app/app/modules/coffeePage/views/coffee_page_view.dart';
import 'package:coffee_app/app/shared/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Drinkable',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          actions: [Icon(Icons.search)],
          leading: Icon(Icons.menu),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: KbuttonColor,
            labelColor: KbuttonColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Coffee',
              ),
              Tab(
                text: 'Tea',
              ),
              Tab(
                text: 'Juice',
              ),
              Tab(
                text: 'Cake',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CoffeePageView(),
            Center(
              child: Text('Tea Page'),
            ),
            Center(
              child: Text('Juice Page'),
            ),
            Center(
              child: Text('Cake Page'),
            ),
          ],
        ),
      ),
    );
  }
}
