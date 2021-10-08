import 'package:flutter/material.dart';
import 'package:flutter_learning/what_is_flutter.dart';

import 'home.dart';
import 'installation.dart';

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

