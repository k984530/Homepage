import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/First/Components/Profile.dart';

class ThirdMainScreen extends StatelessWidget {
  const ThirdMainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Text(
          'test',
        ),
      ),
    );
  }
}
