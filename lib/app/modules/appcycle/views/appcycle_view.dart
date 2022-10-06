import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/appcycle_controller.dart';

class AppcycleView extends GetView<AppcycleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Life Cycle'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  controller.count.value.toString(),
                  style: TextStyle(fontSize: 20),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text("-")),
                ElevatedButton(
                    onPressed: () {
                      controller.reset();
                    },
                    child: Text("Reset")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
