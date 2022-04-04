import 'package:flutter/material.dart';

//import 'login_screen.dart';
//import 'signup_screen.dart';

class  HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
    body: Center(
      child: Text(
        'This is My Home Screen', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
         )
        ) ,
      ) ,
    );
  }
}
