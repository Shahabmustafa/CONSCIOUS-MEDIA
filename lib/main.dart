import 'package:flutter/material.dart';
import 'package:kitoob/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kitoob',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}


