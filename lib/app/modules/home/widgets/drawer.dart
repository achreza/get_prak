import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_prak/app/modules/home/controllers/home_controller.dart';

class MainDrawer extends GetView<HomeController> {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Ini Drawer',
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              controller.changeTab(0);
            },
          ),
          ListTile(
            title: Text('Search'),
            onTap: () {
              controller.changeTab(1);
            },
          ),
          ListTile(
            title: Text('Reels'),
            onTap: () {
              controller.changeTab(2);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              controller.changeTab(3);
            },
          ),
        ],
      ),
    );
  }
}
