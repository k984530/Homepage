import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/First/Components/CustomAppbar.dart';
import 'package:flutterweb/Screens/First/Components/FlipPhone.dart';
import 'package:flutterweb/Screens/First/Components/HorizontalScroll.dart';
import 'package:flutterweb/Screens/First/LogScreen.dart';
import 'package:flutterweb/Screens/First/ProfileScreen.dart';
import 'package:flutterweb/Screens/Second/SecondMainScreen.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import 'PortfolioScreen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  ScrollController VerScroll = ScrollController();
  ScrollController HorScroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(19, 0, 0, 0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            controller: VerScroll,
            child: Column(
              children: [
                ProfileScreen(),
                PortfolioScreen(
                  HorScroll: HorScroll,
                ),
                Container(
                  width: w,
                  height: h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepPurple,
                              Colors.deepOrange,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          child: BackGroundMobile(w, 0)),
                      Positioned(top: h * 0.33, child: BackGroundMobile(w, 1)),
                      Positioned(top: h * 0.66, child: BackGroundMobile(w, 2)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            width: w,
            height: 100,
            child: CustomAppbar(VerScroll: VerScroll),
          ),
        ],
      ),
    );
  }
}
