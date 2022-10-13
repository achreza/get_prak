import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_prak/app/modules/home/views/reels_view.dart';
import 'package:get_prak/app/modules/home/views/search_view.dart';

import '../views/home_view.dart';
import '../views/profile_view.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Widget> pages = [
    HomeView(),
    SearchView(),
    ReelsView(),
    ProfileView(),
  ];

  final List<String> namaPages = ['Home', 'Search', 'Reels', 'Profile'];
  final List<Icon> listIcon = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.video_call),
    Icon(Icons.person)
  ];

  final RxInt tabIndex = 0.obs;
  late TabController tabController;

  void changeTab(int index) {
    tabIndex.value = index;
    tabController.animateTo(index);
    tampilSnackbar(index);
  }
  
  void tampilSnackbar(int index) {
    Get.showSnackbar(
      GetSnackBar(
        title: 'Ini Halaman ' + namaPages[index],
        message: 'Pindah Halaman Success',
        icon: listIcon[index],
        backgroundColor: Colors.black,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
