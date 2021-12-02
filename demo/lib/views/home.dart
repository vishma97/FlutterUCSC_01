
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.only(top: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 50),
              child: Text(
                'Home',
              ),
            ),
           Container(
             child: ElevatedButton
             (child:const Text('Users'),
             onPressed: () {
               Navigator.pushNamed(context, '/user',
               arguments:
                     'User Page');
             },
             ),
           ),
            Container(
             child: ElevatedButton
             (child:const Text('User Profile'),
             onPressed: () {
               Navigator.pushNamed(context, '/userprofile',
               arguments:
                      'User Profile Page');
             },
             ),
           ),
          ],
        ),
      )),
    );
  }
}