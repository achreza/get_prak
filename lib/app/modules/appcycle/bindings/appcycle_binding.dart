import 'package:get/get.dart';

import '../controllers/appcycle_controller.dart';

class AppcycleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppcycleController>(
      () => AppcycleController(),
    );
  }
}
