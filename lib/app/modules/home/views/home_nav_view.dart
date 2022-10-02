import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_prak/app/modules/home/controllers/home_controller.dart';

class HomeNavView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller.tabController,
        physics: NeverScrollableScrollPhysics(),
        children: controller.pages,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTab,
          
          backgroundColor: Colors.grey.shade100,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.stream),
                label: 'Reels',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
