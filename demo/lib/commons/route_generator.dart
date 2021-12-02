import 'package:flutter/material.dart';
import 'package:demo/views/home.dart';
import 'package:demo/views/users.dart';
import 'package:demo/views/user_profile.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage(title: 'This is the Home Page'));
      case '/user':
        return MaterialPageRoute(builder: (_) => User(title: 'This is the User Page'));
      case '/userprofile':
        return MaterialPageRoute(builder: (_) => UserProfile(title: 'This is the User Profile Page'));
      default:
        return _errorRoute(); 
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}