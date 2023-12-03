import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double pointSize = 17;
Color pointColor = Colors.grey.shade50;
History() => Positioned(
      bottom: 50,
      right: 450,
      width: 300,
      height: 600,
      child: Stack(
        children: [
          Positioned(
            left: 8,
            top: 20,
            child: Container(
              height: 600,
              width: 1,
              color: Colors.grey.shade50,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ...HistoryContent('2022.10\nNFC & QR PAY 든든한끼'),
                ...HistoryContent('2022.10\nNFC & QR PAY 든든한끼'),
              ],
            ),
          ),
        ],
      ),
    );

HistoryContent(String content) => [
      Row(
        children: [
          Container(
            width: pointSize,
            height: pointSize,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: pointColor,
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white38,
                ),
              ),
              child: Text(
                content,
                style: GoogleFonts.nanumGothic(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 50,
      ),
    ];
