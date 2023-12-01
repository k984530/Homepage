import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Components/FlipPhone.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade700,
                Colors.blue.shade200,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Container(
          height: h,
          width: 1200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 150,
                child: Text(
                  "창의적인 인터렉티브한 앱을 추구하는 개발자입니다.",
                  style: GoogleFonts.blackHanSans(
                    fontSize: 30,
                    color: Colors.white.withOpacity(0.85),
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                    child: Container(
                      width: 350,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: Colors.white38,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Transform.rotate(
                        angle: pi * 30 / 180,
                        child: FilpPhoneWidget(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text(
            "Made by Flutter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
