import 'package:call_app/Contact.dart';
import 'package:call_app/Contact_Number.dart';
import 'package:call_app/favorite.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var _currentindex = 0;
  final Page = [
    Contact(),
    Contact_Number(),
    Favorite(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text("Call"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            title: Text("Contact"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: Page[_currentindex],
    );
  }
}
