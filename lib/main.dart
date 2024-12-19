import 'package:flutter/material.dart';
import 'package:flutter_nhost_app/pages/data.dart';
import 'package:flutter_nhost_app/pages/home.dart';
import 'package:flutter_nhost_app/pages/myDocuments.dart';
// import 'package:flutter_nhost_app/pages/videoPlayer.dart';
import 'package:flutter_nhost_app/pages/alertDialog.dart';
import 'package:flutter_nhost_app/pages/faq.dart';
import 'package:flutter_nhost_app/pages/status.dart';
import 'package:flutter_nhost_app/pages/request.dart';
import 'package:flutter_nhost_app/pages/proposal.dart';
import 'package:flutter_nhost_app/pages/knowledge.dart';
import 'package:flutter_nhost_app/pages/myRequest.dart';
import 'package:flutter_nhost_app/pages/newRequest.dart';
import 'package:flutter_nhost_app/pages/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    VectorWidget(),
    HelpCenterHeader(),
    NewRequest(),
    MyRequest(),
    Proposal(),
    TimelinePage(),
    KnowledgeCentral(),
    FaqCentral(),
    DataCentral(),
    Widget005(),
    MyDocuments()
    // VideoPlayerScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 20, 42),
        title: Center(
          child: Image.asset(
            './assets/logo.png',
            width: 100,
            height: 100,
          ),
        ),
        centerTitle: true,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.shade700,
        onTap: _onItemTapped,
        selectedFontSize: 11,
        unselectedFontSize: 11,
      ),
    );
  }
}
