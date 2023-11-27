import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/Components/FlipPhone.dart';
import 'package:flutterweb/Screens/Components/MainBackground.dart';
import 'package:glassmorphism/glassmorphism.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h,
                width: w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: MainBackgroundWidget(),
                    ),
                    Positioned(
                      child: Transform.rotate(
                        angle: pi * 30 / 180,
                        child: FilpPhoneWidget(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
