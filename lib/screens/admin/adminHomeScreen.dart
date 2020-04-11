import 'package:drift_education/widgets/CustomFlatButton.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Admin')),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  CustomFlatButton(
                    textName: "Add Student",
                    onPress: () {
                      Navigator.pushNamed(context, '/signup');
                      print('Add student');
                    },
                  ),
                  CustomFlatButton(
                    textName: "Take attendence",
                    onPress: () {
                      Navigator.pushNamed(context, '/attendenceStudent');
                      print('Take attendence');
                    },
                  ),
                  CustomFlatButton(
                    textName: "View/Change Previous Attendence",
                    onPress: () {
                      print('View/Change Previous Attendence');
                    },
                  ),
                  CustomFlatButton(
                    textName: "Add Marks",
                    onPress: () {
                      print('Add Marks');
                    },
                  ),
                  CustomFlatButton(
                    textName: "Sign Out",
                    onPress: () {
                      print('SignOut');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
