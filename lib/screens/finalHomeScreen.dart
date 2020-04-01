import 'package:drift_education/widgets/reusableCard.dart';
import 'package:flutter/material.dart';

class FinalHomeScreen extends StatefulWidget {
  @override
  _FinalHomeScreenState createState() => _FinalHomeScreenState();
}

class _FinalHomeScreenState extends State<FinalHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final logoHeight = screenHeight * .2;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
//          Transform.translate(
//            offset: Offset(screenWidth*.4,1),
//            child: SvgPicture.asset('images/backgroundImage.svg',height: logoHeight,)),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://www.woolha.com/media/2019/06/buneary.jpg"),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Hello',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 30.0)),
                    TextSpan(text: '\n'),
                    TextSpan(
                        text: 'Vedant Lama',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ])),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50.0,
                      child: Card(
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          title: Text('Your Classroom Ranking',style: TextStyle(fontSize: 20.0),),
                          trailing: Text(
                            '1',
                            style: TextStyle(fontSize: 50.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      child: Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          title: Text('Your Attendence Percentage',style: TextStyle(fontSize: 20.0),),
                          trailing: Text(
                            '67%',
                            style: TextStyle(fontSize: 50.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: Colors.blue,
                        cardChild: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Learn More',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30.0),
                            ),
                            TextSpan(
                              text: '\n',
                            ),
                            TextSpan(
                              text: 'About',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30.0),
                            ),
                            TextSpan(
                              text: '\n',
                            ),
                            TextSpan(
                              text: 'Drift Education',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30.0),
                            ),
                          ]),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
