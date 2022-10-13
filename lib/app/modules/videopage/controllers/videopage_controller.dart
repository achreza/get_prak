import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideopageController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    super.onInit();
    initializedPlayer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializedPlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(
          backgroundColor: Colors.yellow,
          playedColor: Colors.red,
          handleColor: Colors.blue,
          bufferedColor: Colors.green),
      placeholder: Container(
        color: Colors.red,
      ),
      autoInitialize: true,
    );
    update();
  }
}
