import 'package:flutter/material.dart';

import 'WIDGET/widgets/Date & Time Pickers.dart';

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
      home: const DateTimePickersWidget()
    );
  }
}

