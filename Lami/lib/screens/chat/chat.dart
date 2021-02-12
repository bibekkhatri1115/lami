import 'package:Lami/constants.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: lamiPrimaryColor,
                      size: 30.0,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundImage:
                            AssetImage(assetImagePath + 'panda1.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      'Flipper',
                      style: TextStyle(color: lamiPrimaryColor, fontSize: 30.0),
                    ),
                    Container(
                      width: 90.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: lamiPrimaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Text(
                          'Add Friend',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 25.0,
                  width: 400.0,
                  decoration: BoxDecoration(color: lamiPrimaryColor),
                  child: Center(
                    child: Text(
                      '09:12 min',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        // height: 460.0,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage(assetImagePath + 'panda1.png'),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              'You are connected to Flipper',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            ReceivedMessage(),
                            SendMessage(),
                            ReceivedMessage(),
                            SendMessage(),
                            ReceivedMessage(),
                            SendMessage(),
                            ReceivedMessage(),
                            SendMessage(),
                            ReceivedMessage(),
                            ReceivedMessage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        width: 340.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(color: Color(0xFFEAEAF5)),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Message',
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
                      Icon(
                        Icons.send,
                        color: lamiPrimaryColor,
                        size: 30.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReceivedMessage extends StatelessWidget {
  const ReceivedMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(assetImagePath + 'panda1.png'),
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(50.0),
            ),
            constraints:
                BoxConstraints(maxHeight: double.infinity, maxWidth: 340.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: [
                  Text(
                    'Hey',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SendMessage extends StatelessWidget {
  const SendMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: lamiPrimaryColor,
              border: Border.all(color: lamiPrimaryColor),
              borderRadius: BorderRadius.circular(50.0),
            ),
            constraints:
                BoxConstraints(maxHeight: double.infinity, maxWidth: 340.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: [
                  Text(
                    'Hey',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
