import 'package:Lami/constants.dart';
import 'package:Lami/screens/chat/chat.dart';
import 'package:flutter/material.dart';

class StrangerChatIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300.0,
                      child: Text(
                        'Meet New People',
                        style: TextStyle(
                            color: lamiPrimaryColor,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(assetImagePath + 'home2.png'),
                Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: lamiPrimaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Time',
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        '15:00 Minutes',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          width: 100.0,
                          height: 30.0,
                          child: Center(
                            child: Text(
                              'Start',
                              style: TextStyle(color: lamiPrimaryColor),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Chat()));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 300.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: lamiPrimaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      'Filters',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
