import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade900,
        appBar: AppBar(),
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
                          "안녕하세요? 포트폴리오 입니다",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
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
