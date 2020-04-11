import 'package:drift_education/screens/attendenceScreen.dart';
import 'package:drift_education/screens/chatScreen.dart';
import 'package:drift_education/screens/finalHomeScreen.dart';
import 'package:drift_education/screens/myaccountScreen.dart';
import 'package:drift_education/screens/progressScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FinalHomeScreen(),
    ProgressScreen(),
    AttendenceScreen(),
    ChatScreen(),
    MyAccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Vedant Lama'),
              accountEmail: Text('a@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://www.woolha.com/media/2019/06/buneary.jpg"),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: (){
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              title: Text('Progress'),
              trailing: Icon(Icons.trending_up),
            ),
            ListTile(
              title: Text('Chat'),
              trailing: Icon(Icons.chat),
            ),
          ],
        ),
      ),
      body: Center(
        child: _children.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up), title: Text('Progress')),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text('Attendence'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chat')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('My Account'))
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
