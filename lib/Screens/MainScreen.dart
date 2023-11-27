import 'dart:ui';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.white,
                              Colors.black,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "WE CAN DO EVERYTHING",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 5,
                                offset: Offset(0, 0),
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   left: 0,
                    //   top: 0,
                    //   bottom: 0,
                    //   width: 300,
                    //   child: ClipRect(
                    //     child: BackdropFilter(
                    //       filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //             color: Colors.white.withOpacity(0.2),
                    //             border: Border.all(
                    //               width: 1.5,
                    //               color: Colors.white.withOpacity(0.2),
                    //             )),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                height: 550,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 11, 4, 42)),
              )
            ],
          ),
        ));
  }
}
