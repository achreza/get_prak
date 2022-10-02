import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Show Snackbar'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Ini Halaman Profile'),
                  action: SnackBarAction(
                    label: 'OK',
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }
}
