import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MainScreen.dart';

class Portfolio extends StatelessWidget {
  Portfolio({
    super.key,
    required this.TitleColor,
    required this.Title01,
    required this.Title02,
    required this.UseTool,
    required this.Period,
    required this.Team,
    required this.Expalin,
    required this.retrospect,
    required this.GitURL,
  });

  Color TitleColor;
  String Title01;
  String Title02;
  String UseTool;
  String Period;
  String Team;
  String Expalin;
  String retrospect;
  String GitURL;

  Color Content = Colors.black87;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      color: TitleColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 100,
            width: w,
            height: h - 100,
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(w * 0.05),
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: w * 0.07,
            height: h - 100,
            width: w * 0.32,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..rotateZ(
                      pi * 15 / 180,
                    ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: w * 0.005,
                      bottom: w * 0.01,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(w * 0.023),
                      child: Image.asset(
                        'assets/projects/img1.png',
                        width: w * 0.128,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..rotateZ(
                      pi * 15 / 180,
                    ),
                  child: Image.asset(
                    'assets/phone.png',
                    width: w * 0.42,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: h * 0.1,
            right: w * 0.4,
            height: h * 0.9,
            width: w * 0.6,
            child: Container(
              padding: EdgeInsets.only(left: w * 0.1, right: w * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text.rich(
                    TextSpan(
                      text: Title01,
                      style: GoogleFonts.aDLaMDisplay(
                        fontWeight: FontWeight.bold,
                        color: TitleColor,
                        fontSize: 24,
                      ),
                      children: [
                        TextSpan(
                          text: Title02,
                          style: GoogleFonts.aDLaMDisplay(
                            fontWeight: FontWeight.bold,
                            color: TitleColor,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      text: '사용 언어 및 툴\n',
                      style: GoogleFonts.ibmPlexSansKr(
                        fontWeight: FontWeight.bold,
                        color: Content,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: UseTool,
                          style: GoogleFonts.notoSansKr(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '개발 기간\n',
                      style: GoogleFonts.ibmPlexSansKr(
                        fontWeight: FontWeight.bold,
                        color: Content,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: Period,
                          style: GoogleFonts.notoSansKr(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '팀 구성 및 기여도\n',
                      style: GoogleFonts.ibmPlexSansKr(
                        fontWeight: FontWeight.bold,
                        color: Content,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: Team,
                          style: GoogleFonts.notoSansKr(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '설명\n',
                      style: GoogleFonts.ibmPlexSansKr(
                        fontWeight: FontWeight.bold,
                        color: Content,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: Expalin,
                          style: GoogleFonts.notoSansKr(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '회고\n',
                      style: GoogleFonts.ibmPlexSansKr(
                        fontWeight: FontWeight.bold,
                        color: Content,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: retrospect,
                          style: GoogleFonts.notoSansKr(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    'assets/git.png',
                    width: 50,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
