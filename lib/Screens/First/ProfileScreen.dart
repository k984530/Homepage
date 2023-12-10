import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterweb/Data/HorIndex.dart';
import 'package:flutterweb/Screens/First/Components/History.dart';
import 'package:flutterweb/Screens/First/Components/SkillSet.dart';
import 'package:flutterweb/Screens/First/Portfolios/PortfolioData.dart';
import 'package:get/get.dart';
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
          height: h,
          width: w,
          color: Colors.white,
          // child: Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     // SkillSet(),
          //     // FlipPhone(),
          //     // Positioned(
          //     //   top: 150,
          //     //   right: 420,
          //     //   child: Text(
          //     //     '유용한 편리한 즐거운\n서비스',
          //     //     textAlign: TextAlign.end,
          //     //     style: GoogleFonts.kiwiMaru(
          //     //         color: Colors.grey.shade300, fontSize: 30),
          //     //   ),
          //     // ),
          //   ],
          // ),
        ),
        Positioned(
          top: 130,
          left: 30,
          right: 30,
          child: Obx(
            () => Container(
              height: h - 160,
              width: w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TitleColors[Get.put(HorIndex()).index.value - 1],
                borderRadius: BorderRadius.circular(w * 0.05),
              ),
              // child: Row(
              //   children: [
              //     Column(
              //       children: [],
              //     ),
              //     Column(
              //       children: [History()],
              //     )
              //   ],
              // ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text(
            "Made by Flutter",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
