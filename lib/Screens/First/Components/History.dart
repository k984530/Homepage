import 'package:flutter/material.dart';

import '../../../Palate.dart';

Stack History() => Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 600,
          width: 2,
          color: Palate.CodingColor,
        ),
        Positioned(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                rightHistory("2022.09.03\n국민대 X 자이트론 자율주행대회 본선 진출"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2022.10.24\n든든한 끼 홈페이지\n개발 및 배포"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2022.12.05\n채팅 앱 세미나 개최\n환경마크 인식 앱 개발"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2022.12.21\nNODE - 아이디어 공유 및 팀 빌딩 출시"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.02.17\n Flutter 소모임 개설\n연공 출시"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.03.20\n교내 Git 세미나 개최"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.04.23\ndlu2회사 - PoppinCat\n 인턴"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.05.30\nSW중심대학\n공동해커톤 참여"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.05.31\nSW Startup Challenge\n장려상 수상"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.07.29\nCrypto Trend 출시"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.08.01\n대한민국 SW융합해커톤\n본선 진출"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.08.05\nU300 최종 선정\n교육부장관 인증서수여"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.08.25\n전국 스마트IoT\n경진대회 우수 논문상"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.09.20\n의료 빅데이터 활용 AI 해커톤\n우수상 수상"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.09.27\n관광데이터 활용 공모전\n장려상 수상"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.11.12\n콘텐츠유니버스코리아 해커톤\n본선 진출"),
                SizedBox(
                  height: 40,
                ),
                rightHistory("2023.11.20\n해양데이터 해커톤\n본선 진출"),
                SizedBox(
                  height: 40,
                ),
                leftHistory("2023.11.24\nSW창업경진대회\n우수상 수상"),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );

rightHistory(String content) => Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(
              left: 200,
              top: 20,
            ),
            child: Text(
              content,
              style: TextStyle(
                fontFamily: 'NeoDunggeunmoPro',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );

leftHistory(String content) => Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(
              right: 200,
              top: 20,
            ),
            alignment: Alignment.topRight,
            child: Text(
              content,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'NeoDunggeunmoPro',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
