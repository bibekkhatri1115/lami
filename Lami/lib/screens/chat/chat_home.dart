import 'package:Lami/constants.dart';
import 'package:Lami/screens/chat/stranger_chat_intro.dart';
import 'package:Lami/screens/profile_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fab_dialer/flutter_fab_dialer.dart';

class ChatHome extends StatefulWidget {
  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    ImageProvider img = new AssetImage(assetImagePath + 'panda1.png');
    var miniMenu = [
      new FabMiniMenuItem.withText(
          new Icon(Icons.person_add), lamiPrimaryColor, 4.0, "Button menu", () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => StrangerChatIntro()));
      }, "Meet Random People", lamiPrimaryColor, Colors.white, true),
      new FabMiniMenuItem.withText(
          new Icon(Icons.whatshot), lamiPrimaryColor, 4.0, "Button menu", () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ProfileSLider()));
      }, "Swipe", lamiPrimaryColor, Colors.white, true),
    ];
    return Scaffold(
      floatingActionButton:
          new FabDialer(miniMenu, lamiPrimaryColor, new Icon(Icons.add)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: lamiPrimaryColor,
                    size: 40.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    width: 280.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(color: Color(0xFFEAEAF5)),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: lamiPrimaryColor),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Container(
                  height: 400.0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 33,
                              backgroundImage:
                                  AssetImage(assetImagePath + 'panda1.png'),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 220.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flipper',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Text(
                                  'Hello k cha sanchai chauni haina ??',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Just Now',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                              Container(
                                width: 60.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: lamiPrimaryColor,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Center(
                                  child: Text(
                                    '10.38',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
