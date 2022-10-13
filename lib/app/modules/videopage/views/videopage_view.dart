import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/videopage_controller.dart';

class VideopageView extends GetView<VideopageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('VideopageView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            GetBuilder<VideopageController>(
                init: VideopageController(),
                builder: (controller) => Expanded(
                        child: Center(
                      child: controller.chewieController != null &&
                              controller.chewieController!.videoPlayerController
                                  .value.isInitialized
                          ? Chewie(
                              controller: controller.chewieController!,
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator(),
                                SizedBox(height: 20),
                                Text('Loading'),
                              ],
                            ),
                    )))
          ],
        ));
  }
}
