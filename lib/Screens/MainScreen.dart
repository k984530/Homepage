import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/Components/CustomAppbar.dart';
import 'package:flutterweb/Screens/Components/FlipPhone.dart';
import 'package:flutterweb/Screens/Components/HorizontalScroll.dart';
import 'package:flutterweb/Screens/LogScreen.dart';
import 'package:flutterweb/Screens/ProfileScreen.dart';
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
                LogScreen(),
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
