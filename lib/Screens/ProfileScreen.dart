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
                bottom: 150,
                child: Text(
                  "Mobile App Develop",
                  style: GoogleFonts.blackHanSans(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white24,
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
