import 'package:Lami/constants.dart';
import 'package:Lami/screens/chat/chat_home.dart';
import 'package:Lami/screens/login/components/background.dart';
import 'package:flutter/material.dart';

class InterestAdd extends StatefulWidget {
  @override
  _InterestAddState createState() => _InterestAddState();
}

class _InterestAddState extends State<InterestAdd> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0, bottom: 20.0),
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'My Interest',
                      style: TextStyle(
                        color: lamiPrimaryColor,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Image.asset(
                      assetImagePath + 'home2.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        'Pick your interest so that we can find likely minded people for you ..!!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 10.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Movie')),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Travel')),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Love')),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Nature')),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Sports')),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Fashion')),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Book')),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('Java')),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 40.0,
                  width: 240.0,
                  decoration: BoxDecoration(
                    color: lamiPrimaryColor,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => ChatHome()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
