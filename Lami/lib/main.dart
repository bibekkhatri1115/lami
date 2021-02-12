// import 'package:Lami/constants.dart';
import 'package:Lami/constants.dart';
import 'package:Lami/data/slider_data.dart';
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
      ),
      debugShowCheckedModeBanner: false,
      home: SlidingScreen(),
    );
  }
}

class SlidingScreen extends StatefulWidget {
  @override
  _SlidingScreenState createState() => _SlidingScreenState();
}

class _SlidingScreenState extends State<SlidingScreen> {
  List<SliderData> slides = new List<SliderData>();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: slides.length,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index) {
            return SliderTiles(
              title: slides[index].title,
              imagePath: slides[index].imagePath,
              desc: slides[index].desc,
            );
          }),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 120.0,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < slides.length; i++)
                    currentIndex == i
                        ? pageIndexIndicator(true)
                        : pageIndexIndicator(false)
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 180.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: lamiPrimaryColor,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red[200],
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  currentIndex == slides.length - 1 ? "Continue" : "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderBackground extends StatelessWidget {
  final Widget child;
  SliderBackground({this.child});

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
              child: Image.asset(
                'assets/images/splashscreen_top.png',
                width: 250.0,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/welcomebackground.png',
                width: 420.0,
              ),
            ),
            Positioned(
              top: 80.0,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class SliderTiles extends StatelessWidget {
  final String imagePath, title, desc;
  SliderTiles({this.imagePath, this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60.0),
      child: Column(
        children: [
          Container(
            width: 350.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: lamiPrimaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: lamiPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image.asset(
            imagePath,
            height: 380.0,
          ),
          Container(
            width: 380.0,
            child: Text(
              desc,
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget pageIndexIndicator(bool isCurrentPage) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.0),
    height: isCurrentPage ? 20.0 : 16.0,
    width: isCurrentPage ? 20.0 : 16.0,
    decoration: BoxDecoration(
      color: isCurrentPage ? lamiPrimaryColor : Color(0x00000000),
      border: Border.all(color: lamiPrimaryColor),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
