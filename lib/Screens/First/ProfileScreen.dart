import 'dart:math';
import 'dart:ui';
import 'dart:js' as js;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterweb/Data/HorIndex.dart';
import 'package:flutterweb/Screens/First/Components/History.dart';
import 'package:flutterweb/Screens/First/Components/SkillSet.dart';
import 'package:flutterweb/Screens/First/Portfolios/PortfolioData.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
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

  Color FontColor = Color.fromARGB(255, 32, 194, 14);
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
          color: Colors.black,
        ),
        Column(
          children: [
            Text(
              "Won's Space",
              style: GoogleFonts.silkscreen(
                color: Color.fromARGB(255, 32, 194, 14),
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 400,
              width: w > 600 ? 600 : w - 10,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.grey, width: 2.5),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/won.jpeg',
                          width: 120,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                js.context.callMethod(
                                    "open", ["https://github.com/k984530"]);
                              },
                              child: Image.asset(
                                'assets/git.png',
                                width: 25,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(
                                  ClipboardData(
                                      text: 'alyduho984530@gmail.com'),
                                );
                                Get.closeAllSnackbars();
                                Get.snackbar(
                                  '이메일이 클립보드에 저장되었습니다.',
                                  'alyduho984530@gmail.com',
                                  backgroundColor: Colors.white,
                                );
                              },
                              child: Icon(
                                Icons.mail_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'NAME : ',
                            style: GoogleFonts.silkscreen(
                                color: FontColor, fontSize: 16),
                            children: [
                              TextSpan(
                                text: "최 원",
                                style: TextStyle(
                                  fontFamily: 'NeoDunggeunmoPro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "JOB : APP DEVELOPER",
                          style: GoogleFonts.silkscreen(
                            color: Color.fromARGB(255, 32, 194, 14),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "EXPLAIN",
                          style: GoogleFonts.silkscreen(
                            color: Color.fromARGB(255, 32, 194, 14),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "독창성, 추진성, 감성\n세 박자 개발자\n높은 생산성이 특징",
                          style: TextStyle(
                            fontFamily: 'NeoDunggeunmoPro',
                            fontWeight: FontWeight.w400,
                            color: FontColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.arrow_drop_up_sharp,
                color: Color.fromARGB(255, 32, 194, 14),
                size: 45,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.arrow_drop_down_sharp,
                color: Color.fromARGB(255, 32, 194, 14),
                size: 45,
              ),
            )
          ],
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text(
            "Made by Flutter",
            style: GoogleFonts.silkscreen(
              color: FontColor,
            ),
          ),
        )
      ],
    );
  }
}
