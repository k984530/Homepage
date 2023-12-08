import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/First/MainScreen.dart';
import 'package:flutterweb/Screens/Second/SecondMainScreen.dart';

import 'Screens/Third/ThirdMainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Won's Space",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}