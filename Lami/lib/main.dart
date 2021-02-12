// import 'package:Lami/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lami',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.red[400],
      ),
      debugShowCheckedModeBanner: false,
      home: Background(),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset('assets/images/log-circle.png'))
          ],
        ),
      ),
    );
  }
}

class SliderTile extends StatefulWidget {
  @override
  _SliderTileState createState() => _SliderTileState();
}

class _SliderTileState extends State<SliderTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'Find Your Match',
                style: TextStyle(
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/images/home1.png'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  'With a lot of people to choose from, have a date with your feeling'),
              pageIndexIndicator(true)
            ],
          ),
        ),
      ),
    );
  }
}

Widget pageIndexIndicator(bool isCurrentPage) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.0),
    height: isCurrentPage ? 10.0 : 6.0,
    width: isCurrentPage ? 10.0 : 6.0,
    decoration: BoxDecoration(
      color: isCurrentPage ? Colors.grey : Colors.grey[300],
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
