import 'package:Lami/constants.dart';

class SliderData {
  String imagePath;
  String title;
  String desc;

  SliderData({this.imagePath, this.title, this.desc});
}

List<SliderData> getSlides() {
  List<SliderData> slides = [
    SliderData(
        imagePath: assetImagePath + 'home1.png',
        title: 'Find Your Match',
        desc:
            'With a lot of people to choose from, have a date with your feeling'),
  ];

  return slides;
}
