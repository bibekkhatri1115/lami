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
            'With a lot of people to choose from, have a date with your feeling.'),
    SliderData(
        imagePath: assetImagePath + 'home2.png',
        title: 'Connect',
        desc: 'Walk in single, walk out as two persons with one soul.'),
    SliderData(
        imagePath: assetImagePath + 'home3.png',
        title: 'Explore',
        desc: 'A click for your love. Get the best relation with us'),
  ];

  return slides;
}

class Interest {
  String interest;
  Interest({this.interest});
}

class ProfileSliderData {
  String imagePath;
  String name;
  String age;
  List<Interest> interest = new List<Interest>();

  ProfileSliderData({this.imagePath, this.name, this.age, this.interest});
}

List<Interest> interests = [
  Interest(interest: 'Movie'),
  Interest(interest: 'Sports'),
];
List<ProfileSliderData> profiles = [
  new ProfileSliderData(
      imagePath: assetImagePath + 'profile/Profile1.png',
      age: '20',
      name: 'Akshay Kumar',
      interest: interests),
  new ProfileSliderData(
      imagePath: assetImagePath + 'profile/Profile1.png',
      age: '20',
      name: 'Akshay Kumar',
      interest: interests),
];
