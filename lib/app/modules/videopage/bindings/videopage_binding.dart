import 'package:get/get.dart';

import '../controllers/videopage_controller.dart';

class VideopageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideopageController>(
      () => VideopageController(),
    );
  }
}
