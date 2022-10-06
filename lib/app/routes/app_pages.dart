import 'package:get/get.dart';

import 'package:get_prak/app/modules/appcycle/bindings/appcycle_binding.dart';
import 'package:get_prak/app/modules/appcycle/views/appcycle_view.dart';
import 'package:get_prak/app/modules/home/bindings/home_binding.dart';
import 'package:get_prak/app/modules/home/views/home_nav_view.dart';
import 'package:get_prak/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.APPCYCLE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeNavView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.APPCYCLE,
      page: () => AppcycleView(),
      binding: AppcycleBinding(),
    ),
  ];
}
