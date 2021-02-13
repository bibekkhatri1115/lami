import 'package:Lami/constants.dart';
import 'package:Lami/data/slider_data.dart';
import 'package:Lami/screens/chat/chat_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileSLider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 246, 255, 1),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                width: 400.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        print('test');
                        Navigator.of(context).pop(MaterialPageRoute(
                            builder: (BuildContext context) => ChatHome()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                        color: lamiPrimaryColor,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30.0,
                      color: lamiPrimaryColor,
                    ),
                  ],
                ),
              ),
              Positioned(
                width: 400.0,
                child: Image.asset(
                  assetImagePath + 'swipe_bg.png',
                ),
              ),
              ListView.builder(
                itemCount: profiles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 420.0,
                    child: Profile(
                      imagePath: 'Profile1.png',
                      age: 20,
                      id: 1,
                      name: 'Sanjit Thakuri',
                      interests: interests,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final String name;
  final int age;
  final String imagePath;
  final int id;
  final List<Interest> interests;
  const Profile({
    Key key,
    this.name,
    this.age,
    this.imagePath,
    this.id,
    this.interests,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  child: Image.asset(assetImagePath + imagePath),
                ),
                Positioned(
                  bottom: -20,
                  left: 10,
                  child: Container(
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(assetImagePath + 'heart.png'),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 20,
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.clear,
                      color: lamiPrimaryColor,
                      size: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 160.0,
            height: 70.0,
            child: Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Text(
                        '$name, $age',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: getInterests(interests),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InterestContainer extends StatelessWidget {
  final String interest;
  const InterestContainer({
    Key key,
    this.interest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        child: Text(interest),
      ),
    );
  }
}

List<Widget> getInterests(List<Interest> interests) {
  List<Widget> _widgets = new List<Widget>();
  for (int i = 0; i < interests.length; i++) {
    _widgets.add(InterestContainer(interest: interests[i].interest));
  }
  return _widgets;
}
