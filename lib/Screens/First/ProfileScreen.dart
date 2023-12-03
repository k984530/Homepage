import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/First/Components/History.dart';
import 'package:flutterweb/Screens/First/Components/SkillSet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

import 'Components/FlipPhone.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/background.mp4')
      ..initialize()
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            color: Colors.black,
          ),
        ),
        Container(
          height: h,
          width: 1200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SkillSet(),
              FlipPhone(),
              History(),
              // Positioned(
              //   top: 150,
              //   right: 420,
              //   child: Text(
              //     '유용한 편리한 즐거운\n서비스',
              //     textAlign: TextAlign.end,
              //     style: GoogleFonts.kiwiMaru(
              //         color: Colors.grey.shade300, fontSize: 30),
              //   ),
              // ),
              Positioned(
                left: 50,
                bottom: 50,
                height: 750,
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white24,
                        ),
                      ),
                    ),
                  ),
                ),
              )
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
