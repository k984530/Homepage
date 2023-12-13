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

late double h;
late double w;

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  ScrollController VerScroll = ScrollController();
  ScrollController HorScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
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
                ProfileScreen(),
              ],
            ),
          ),
          // Positioned(
          //   top: 0,
          //   width: w,
          //   height: 100,
          //   child: CustomAppbar(VerScroll: VerScroll),
          // ),
        ],
      ),
    );
  }
}
