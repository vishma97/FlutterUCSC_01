import 'package:flutter/material.dart';
import 'package:demo/widgets/appbar.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'package:demo/views/cards/user_card.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

final List<String> usernames = <String>[
    "Kamal Perera",
    "Nimal Dissanayaka",
    "Saman De Silva",
    "Sunil Mendis",
    "Shehan Gunawardana",
    "Sudath Nishantha"
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: usernames.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 150,
              margin: EdgeInsets.all(15),
           child: Row(
                  children: <Widget>[
                    Image(
                        image: AssetImage("assets/images/login.jpg")),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(usernames[index] + '\nNo 2, Hill St, Kandy'),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              );
            }));
  }
}