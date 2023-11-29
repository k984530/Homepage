import 'dart:math';

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
        ),
        Container(
          height: h,
          width: 1200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 150,
                left: 10,
                child: Text(
                  "안녕하세요, \n최원입니다",
                  style: GoogleFonts.blackHanSans(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 0,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                right: 120,
                child: Transform.rotate(
                  angle: pi * 30 / 180,
                  child: FilpPhoneWidget(),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text("Made by Flutter"),
        )
      ],
    );
  }
}
