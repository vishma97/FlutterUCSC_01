import 'package:demo/commons/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:demo/views/home.dart';
import 'package:demo/views/users.dart';
import 'package:demo/views/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: "Home"),
     // home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
