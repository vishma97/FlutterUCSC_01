import 'package:flutter/material.dart';

class User extends StatefulWidget{
  User({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         const Text(
           'User Page'
           )
       ],),
       ),
    );
  }
}