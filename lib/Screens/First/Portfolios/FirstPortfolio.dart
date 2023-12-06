import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MainScreen.dart';

class Portfolio001 extends StatelessWidget {
  const Portfolio001({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      color: const Color.fromARGB(255, 0, 87, 175),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            height: h,
            width: w * 0.4,
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
                        width: w * 0.16,
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
            top: 100,
            right: w * 0.4,
            height: h * 0.1,
            width: w * 0.6,
            child: Container(
              color: Colors.white10,
              alignment: Alignment.center,
              child: Text(
                "FisherMap",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100 + h * 0.1,
            right: w * 0.4,
            height: h * 0.9 - 100,
            width: w * 0.6,
            child: Container(
              color: Colors.white24,
              padding: EdgeInsets.only(left: w * 0.1, right: w * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '사용 언어 및 툴\n',
                      style: GoogleFonts.ibmPlexSansKr(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: 'Dart(Flutter), Python(Flask), Git',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
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
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: '2023.11.10 - 2023.11.20 (10일)',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
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
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: '앱 개발자 2명, 인공지능 개발자 1명, App 85 % Server 10 %',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
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
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '청년 귀어들을 위한 서비스입니다. 지역별 날씨, 해안 정보, 어종 예측, 어선 중계, 귀어지원사업 공지 모음 기능등을 제공합니다. 인터렉티브한 앱을 만들기위해 애니메이션 효과에 집중하여 만든 앱입니다.',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
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
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "부산 해양데이터 해커톤에 참여하여 만든 서비스입니다. 단 기간 내에 개발을 해야했기에 비교적 간편한 상태관리 라이브러리인 GetX를 사용해서 구현했습니다. CustomCliper, CustomPainter 등을 사용해서 파도를 표현하였고, Container에 눈과 입을 그렸습니다. Http를 사용하여 웹 크롤링 기능이 가능하다는 것을 알 수 있었습니다. ZWidget을 사용해서 글자에 3D 효과를 더했으며, Flutter가 3D를 기반으로 렌더링 된다는 사실을 알 수 있었습니다.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
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
                    color: Colors.white,
                    width: 50,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
