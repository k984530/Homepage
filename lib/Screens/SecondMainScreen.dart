import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Components/FlipPhone.dart';

class SecondMainScreen extends StatelessWidget {
  const SecondMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Colors.deepOrange,
            ])),
          ),
          Positioned(left: 0, right: 0, top: 0, child: BackGroundMobile(w, 0)),
          Positioned(top: h * 0.33, child: BackGroundMobile(w, 1)),
          Positioned(top: h * 0.66, child: BackGroundMobile(w, 2)),
          Container(
            color: Colors.white24,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 7, right: 7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(4, 4),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "최원 \n<모바일 앱 개발자/>",
                          style: TextStyle(
                            color: const Color.fromARGB(210, 255, 255, 255),
                            fontSize: w * 0.02,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 7, left: 7, right: 7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(4, 4),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "about me",
                          style: TextStyle(
                            color: const Color.fromARGB(210, 255, 255, 255),
                            fontSize: w * 0.02,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 7, left: 7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(4, 4),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "CHOI WON\n<APP DEVELOPER/>",
                          style: TextStyle(
                            color: const Color.fromARGB(210, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 7, top: 7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(4, 4),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Projects",
                          style: TextStyle(
                            color: const Color.fromARGB(210, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 7, top: 7, right: 7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(4, 4),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: const Color.fromARGB(210, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 7, top: 7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(4, 4),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: const Color.fromARGB(210, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

BackGroundMobile(double w, int j) => Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i <= 8; i++)
              Transform.rotate(
                angle: pi * 30 / 180,
                child: Container(
                  margin: EdgeInsets.only(right: w * 0.05),
                  width: w * 0.08,
                  height: 2.165 * w * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.02),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 2,
                        spreadRadius: 3,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(w * 0.02),
                    child: Image.asset('assets/projects/img' +
                        (i + (j * 8)).toString() +
                        '.png'),
                  ),
                ),
              )
          ],
        ),
      ),
    );
