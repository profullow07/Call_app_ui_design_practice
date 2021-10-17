import 'package:call_app/Missed.dart';
import 'package:call_app/Recived.dart';
import 'package:call_app/all.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("PHONE"),
            bottom: TabBar(tabs: [
              Tab(
                text: ("All"),
                
              ),
              Tab(
                text: ("Missed"),
                
              ),
              Tab(
                text: ("Recived"),
                
              ),
            ]),
          ),
          body: TabBarView(children: [
            Contactall(),
            Missed(),
            Recived(),
          ]),
          
        ),
        
      ),
      
    );
  }
}