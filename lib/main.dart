import 'package:flutter/material.dart';

import 'challenge/pages/layout_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const LayoutScreen(),
    );
  }
}
