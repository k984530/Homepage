import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class FilpPhoneWidget extends StatefulWidget {
  const FilpPhoneWidget({super.key});

  @override
  State<FilpPhoneWidget> createState() => _FilpPhoneWidgetState();
}

class _FilpPhoneWidgetState extends State<FilpPhoneWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  AnimationStatus _status = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(
        reverse: false,
      );
    _animation = Tween(end: 4.0, begin: 0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  double Phone_Width = 240;
  double Phone_Height = 400;
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.bottomRight,
      transform: Matrix4.identity()
        ..rotate(vector.Vector3(Phone_Width, Phone_Height, 0),
            pi * _animation.value / 2),
      child: Stack(
        children: [
          _animation.value > 2
              ? bottomPhone(Phone_Height, Phone_Width)
              : topPhone(Phone_Width),
          Transform(
            transform: _animation.value > 1 && _animation.value < 3
                ? (Matrix4.identity()..translate(0, 0, 20))
                : (Matrix4.identity()..translate(0, 0, 0)),
            child: Container(
              child: _animation.value > 1 && _animation.value < 3
                  ? Container(
                      color: Colors.blue,
                      width: Phone_Width,
                      height: Phone_Height,
                    )
                  : Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      color: Colors.green,
                    ),
            ),
          ),
          _animation.value < 0.8 || _animation.value > 2.8
              ? rightPhone(Phone_Height)
              : leftPhone(Phone_Height, Phone_Width),
          _animation.value < 0.8 || _animation.value > 2.8
              ? leftPhone(Phone_Height, Phone_Width)
              : rightPhone(Phone_Height),
          Transform(
            transform: _animation.value > 1 && _animation.value < 3
                ? (Matrix4.identity()..translate(0, 0, 0))
                : (Matrix4.identity()..translate(0, 0, 20)),
            child: Container(
              child: _animation.value <= 1 || _animation.value >= 3
                  ? Container(
                      color: Colors.blue,
                      width: Phone_Width,
                      height: Phone_Height,
                    )
                  : Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      color: Colors.green,
                    ),
            ),
          ),
          _animation.value < 2
              ? bottomPhone(Phone_Height, Phone_Width)
              : topPhone(Phone_Width),
        ],
      ),
    );
  }
}

Transform rightPhone(double height) {
  return Transform(
    alignment: Alignment.bottomRight,
    transform: Matrix4.identity()
      ..translate(-20, 0, 0)
      ..rotateY(pi * 90 / 180),
    child: Container(
      width: 20,
      height: height,
      color: Colors.purple,
    ),
  );
}

Transform leftPhone(double height, double width) {
  return Transform(
    alignment: Alignment.bottomRight,
    transform: Matrix4.identity()
      ..translate(width - 20, 0, 0)
      ..rotateY(pi * 90 / 180),
    child: Container(
      width: 20,
      height: height,
      color: Colors.amber,
    ),
  );
}

Transform bottomPhone(double height, double width) {
  return Transform(
    transform: Matrix4.identity()
      ..translate(0, height, 0)
      ..rotateZ(-pi * 90 / 180)
      ..rotateY(-pi * 90 / 180),
    child: Container(
      width: 20,
      height: width,
      color: Colors.brown,
    ),
  );
}

Transform topPhone(double width) {
  return Transform(
    transform: Matrix4.identity()
      ..translate(0, 0, 0)
      ..rotateZ(-pi * 90 / 180)
      ..rotateY(-pi * 90 / 180),
    child: Container(
      width: 20,
      height: width,
      color: Colors.white,
    ),
  );
}
