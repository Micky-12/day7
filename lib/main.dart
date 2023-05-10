import 'package:flutter/material.dart';
//import 'package:project_2/Day3/register.dart';
//import 'package:project_2/day5/home_page.dart';
//import 'package:project_2/day7/call.dart';
//import 'package:project_2/day7/chats.dart';
//import 'package:project_2/day7/message.dart';
//import 'package:project_2/day7/message1.dart';
//import 'package:project_2/day7/status.dart';
import 'package:project_2/day8/form.dart';

//import 'day2/loginpage.dart';

void main() {
  runApp(const MyApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: LoginPage(),

    );
  }
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const Home(),
    );
  }
}*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple),
      home: const Forms(),
    );
  }
}

