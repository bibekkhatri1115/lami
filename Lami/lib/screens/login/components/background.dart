import 'package:Lami/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 246, 255, 1),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                assetImagePath + 'welcomebackground.png',
                width: size.width * 1,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                assetImagePath + 'log-circle.png',
                width: size.width * 0.5,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
