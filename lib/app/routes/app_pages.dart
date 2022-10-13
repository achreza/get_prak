import 'package:get/get.dart';

import 'package:get_prak/app/modules/appcycle/bindings/appcycle_binding.dart';
import 'package:get_prak/app/modules/appcycle/views/appcycle_view.dart';
import 'package:get_prak/app/modules/home/bindings/home_binding.dart';
import 'package:get_prak/app/modules/home/views/home_nav_view.dart';
import 'package:get_prak/app/modules/home/views/home_view.dart';
import 'package:get_prak/app/modules/profile/bindings/profile_binding.dart';
import 'package:get_prak/app/modules/profile/views/profile_view.dart';
import 'package:get_prak/app/modules/videopage/bindings/videopage_binding.dart';
import 'package:get_prak/app/modules/videopage/views/videopage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
    GetPage(
      name: _Paths.VIDEOPAGE,
      page: () => VideopageView(),
      binding: VideopageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
