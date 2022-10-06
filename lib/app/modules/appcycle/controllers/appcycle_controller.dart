import 'dart:developer';

import 'package:get/get.dart';

class AppcycleController extends FullLifeCycleController
    with FullLifeCycleMixin {
  //TODO: Implement AppcycleController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void decrement() => count.value--;
  void reset() => count.value = 0;

  @override
  void onDetached() {
    Get.log("onDetached");
    log("onDetached");
    print("State : Detached");
  }

  @override
  void onInactive() {
    Get.log("onInactive");
    log("State : Inactive");
    print("State : onInactive");
  }

  @override
  void onPaused() {
    Get.log("onPaused");
    log("State : onPaused");
    print("State : onPaused");
  }

  @override
  void onResumed() {
    Get.log("onResumed");
    log("State : onResumed");
    print("State : onResumed");
  }
}
