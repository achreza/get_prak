import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_prak/app/modules/home/models/player.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/home_controller.dart';

class ReelsView extends GetView<HomeController> {
  List<Player> data = playerList;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Reels View'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: Container(
                height: 100,
                child: Card(
                  color: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage(data[index].imageAsset),
                            )),
                      ),
                      Expanded(
                        flex: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 22, 10, 0),
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 20, 8, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                data[index].name + " (" + data[index].age + ")",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Raleway',
                                    color: Colors.white54),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Club : ${data[index].club}',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Raleway',
                                    color: Colors.white54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white70,
                      ))
                    ],
                  ),
                ),
              ));
            }),
      ),
    );
  }
}
