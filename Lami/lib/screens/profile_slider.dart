import 'package:Lami/constants.dart';
import 'package:flutter/material.dart';

class ProfileSLider extends StatelessWidget {
  // final Widget child;

  // const ProfileSLider({Key key, this.child}) : super(key: key);
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
                    Icon(
                      Icons.arrow_back,
                      size: 30.0,
                      color: lamiPrimaryColor,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30.0,
                      color: lamiPrimaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Icon(
//                             Icons.arrow_back,
//                             size: 30.0,
//                             color: lamiPrimaryColor,
//                           ),
//                           Icon(
//                             Icons.notifications,
//                             size: 30.0,
//                             color: lamiPrimaryColor,
//                           ),
//                         ],
//                       ),
