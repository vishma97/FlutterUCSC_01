import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget{
  UserProfile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
           'User Profile Page'
           )
       ],),
       ),
    );
  }
}