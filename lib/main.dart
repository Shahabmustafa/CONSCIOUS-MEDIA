import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kitoob/view/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
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
        appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.light),
        primaryColor: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}


