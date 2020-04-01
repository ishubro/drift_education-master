import 'package:drift_education/screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:drift_education/utilities/styles.dart';
import 'package:flutter/services.dart';
class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Track Your Progress",
        description: "Measure your progress towards achieving your goals",
        pathImage: "images/IntroImage1.png",
        backgroundColor: kIntroBackgroundColor,
      ),
    );
    slides.add(
      new Slide(
        title: "Track Your Attendence",
        description: "You learn something every day if you pay attention.",
        pathImage: "images/IntroImage2.png",
        backgroundColor: kIntroBackgroundColor,
      ),
    );
    slides.add(
      new Slide(
        title: "Clear your doubt with Your Mentors",
        description:
        "Your friendly teacher is always there for you. come up with all your doubts. ",
        pathImage: "images/IntroImage3.png",
        backgroundColor: kIntroBackgroundColor,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>SignIn()),);
  }

  @override

  Widget build(BuildContext context) {
    //For turn off the rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}