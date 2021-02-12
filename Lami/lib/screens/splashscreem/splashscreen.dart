import 'dart:async';

import 'package:Lami/constants.dart';
import 'package:Lami/screens/slides/slider.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SlidingScreen())));

    var assetsImage = new AssetImage(assetImagePath + 'logo.png');
    var image = new Image(image: assetsImage, height: 300);

    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: new Center(
          child: image,
        ),
      ), //
    );
  }
}
