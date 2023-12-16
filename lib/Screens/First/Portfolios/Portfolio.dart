import 'dart:math';
import 'dart:js' as js;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
    required this.InitImg,
    required this.Range,
  });

  int InitImg;
  int Range;
  Color TitleColor;
  String Title01;
  String Title02;
  String UseTool;
  String Period;
  String Team;
  String Expalin;
  String retrospect;
  String GitURL;
  double WhiteSpace = max(h * 0.3 + w * 0.04 - 270, 10);
  Color Content = Colors.black87;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      color: Colors.white.withOpacity(0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 100,
            width: w,
            height: h - 100,
            child: Container(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(w * 0.05),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: h - 160,
                      padding: EdgeInsets.only(left: w * 0.1, right: w * 0.05),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: WhiteSpace,
                            ),
                            // Spacer(
                            //   flex: 2,
                            // ),

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

                            SizedBox(
                              height: WhiteSpace,
                            ),
                            // Spacer(),
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
                            if (w < 600) ...[
                              SizedBox(
                                height: 20,
                              ),
                              CarouselSlider(
                                options: CarouselOptions(
                                  height: h * 0.5,
                                  aspectRatio: 3 / 2,
                                  viewportFraction: 0.5,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  clipBehavior: Clip.antiAlias,
                                ),
                                items: [
                                  for (int i = InitImg;
                                      i < InitImg + Range;
                                      i++)
                                    i
                                ].map(
                                  (i) {
                                    return Builder(
                                      builder: (context) {
                                        return Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      h * 0.018),
                                              child: Image.asset(
                                                'assets/projects/img' +
                                                    i.toString() +
                                                    '.png',
                                                width: h * 0.16,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/phone.png',
                                              width: h * 0.18,
                                              fit: BoxFit.fill,
                                              color:
                                                  TitleColor.withOpacity(0.8),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ).toList(),
                              ),
                            ],
                            SizedBox(
                              height: WhiteSpace * 0.7,
                            ),
                            if (GitURL != 'None')
                              InkWell(
                                onTap: () async {
                                  js.context.callMethod("open", [GitURL]);
                                },
                                child: Image.asset(
                                  'assets/git.png',
                                  width: 50,
                                ),
                              ),
                            if (w < 600)
                              SizedBox(
                                height: WhiteSpace * 0.7,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (w >= 600)
                    Expanded(
                      flex: 2,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: h - 160,
                          aspectRatio: 2 / 3,
                          viewportFraction: 0.6,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          clipBehavior: Clip.antiAlias,
                        ),
                        items: [
                          for (int i = InitImg; i < InitImg + Range; i++) i
                        ].map(
                          (i) {
                            return Builder(
                              builder: (context) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(w * 0.018),
                                      child: Image.asset(
                                        'assets/projects/img' +
                                            i.toString() +
                                            '.png',
                                        width: w * 0.152,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/phone.png',
                                      width: w * 0.17,
                                      fit: BoxFit.fill,
                                      color: TitleColor.withOpacity(0.8),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ).toList(),
                      ),
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
