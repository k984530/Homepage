import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double pointSize = 17;

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
              width: 2,
              color: Colors.grey.shade50,
            ),
          ),
          Positioned(
            child: Row(
              children: [
                Container(
                  width: pointSize,
                  height: pointSize,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.amber,
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
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      "2023.10\nNFC & QR PAY 든든한끼",
                      style: GoogleFonts.nanumGothic(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 120,
            child: Container(
              width: pointSize,
              height: pointSize,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
        ],
      ),
    );
