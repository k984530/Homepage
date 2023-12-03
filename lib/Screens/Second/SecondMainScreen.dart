import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../First/Components/FlipPhone.dart';

class SecondMainScreen extends StatelessWidget {
  const SecondMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
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
          Positioned(left: 0, right: 0, top: 0, child: BackGroundMobile(w, 0)),
          Positioned(top: h * 0.33, child: BackGroundMobile(w, 1)),
          Positioned(top: h * 0.66, child: BackGroundMobile(w, 2)),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(
                width: w * 0.66,
                height: h * 0.66,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

BackGroundMobile(double w, int j) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          for (int i = 1; i <= 8; i++)
            Transform.rotate(
              angle: pi * 30 / 180,
              child: Container(
                margin: EdgeInsets.only(right: w * 0.05),
                width: w * 0.08,
                height: 2.165 * w * 0.08,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2,
                      spreadRadius: 3,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  child: Image.asset('assets/projects/img' +
                      (i + (j * 8)).toString() +
                      '.png'),
                ),
              ),
            )
        ],
      ),
    );
