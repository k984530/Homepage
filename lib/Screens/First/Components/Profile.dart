import 'package:flutter/material.dart';

temp(double w) => Column(
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
    );
