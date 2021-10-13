import 'package:flutter/material.dart';


import 'Rest_Api/deleteapi.dart';
import 'Rest_Api/getapi.dart';
import 'Rest_Api/postapi.dart';
import 'Rest_Api/updateapi.dart';
import 'home.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.black.withBlue(400),


      ),
      home: const Home()
    );
  }
}

