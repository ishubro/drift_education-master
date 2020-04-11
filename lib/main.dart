import 'package:drift_education/screens/admin/adminAttendenceScreen.dart';
import 'package:drift_education/screens/admin/adminHomeScreen.dart';
import 'package:drift_education/screens/finalHomeScreen.dart';
import 'package:drift_education/screens/signupScreen.dart';
import 'package:flutter/material.dart';
import 'screens/signIn.dart';
import 'screens/signupScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/signin':(context)=>SignIn(),
        '/signup':(context)=>SignUpScreen(),
        '/homepage':(context)=>FinalHomeScreen(),
        '/attendenceStudent': (context) => AdminAttendenceScreen(),
      },
      title: 'Drift Education',
      theme: ThemeData(
          primaryColor: Color(0xFFF9F9F9)
      ),
      home: AdminHomeScreen(),
    );
  }
}

//update 11/4/20