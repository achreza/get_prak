import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_prak/app/modules/appcycle/controllers/appcycle_controller.dart';
import 'package:get_prak/app/modules/videopage/controllers/videopage_controller.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
