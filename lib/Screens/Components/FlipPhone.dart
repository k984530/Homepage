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
      duration: const Duration(seconds: 6),
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

  double Phone_size = 150;
  late double Phone_Width = Phone_size;
  late double Phone_Height = 2.165 * Phone_size;
  double thickness = 12;
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
              ? bottomPhone(Phone_Height, Phone_Width, thickness)
              : topPhone(Phone_Width, thickness),
          Transform(
            transform: _animation.value > 1 && _animation.value < 3
                ? (Matrix4.identity()..translate(0, 0, thickness))
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
              ? rightPhone(Phone_Height, thickness)
              : leftPhone(Phone_Height, Phone_Width, thickness),
          _animation.value < 0.8 || _animation.value > 2.8
              ? leftPhone(Phone_Height, Phone_Width, thickness)
              : rightPhone(Phone_Height, thickness),
          Transform(
            transform: _animation.value > 1 && _animation.value < 3
                ? (Matrix4.identity()..translate(0, 0, 0))
                : (Matrix4.identity()..translate(0, 0, thickness)),
            child: Container(
              child: _animation.value <= 1 || _animation.value >= 3
                  ? Container(
                      color: Colors.blue,
                      width: Phone_Width,
                      height: Phone_Height,
                      child: Image.asset('assets/img0.png'),
                    )
                  : Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: Image.asset(
                          'assets/img1.png',
                        ),
                      ),
                    ),
            ),
          ),
          _animation.value < 2
              ? bottomPhone(Phone_Height, Phone_Width, thickness)
              : topPhone(Phone_Width, thickness),
        ],
      ),
    );
  }
}

Transform rightPhone(double height, double thickness) {
  return Transform(
    alignment: Alignment.bottomRight,
    transform: Matrix4.identity()
      ..translate(-thickness, 0, 0)
      ..rotateY(pi * 90 / 180),
    child: Container(
      width: thickness,
      height: height,
      color: Colors.grey,
    ),
  );
}

Transform leftPhone(double height, double width, double thickness) {
  return Transform(
    alignment: Alignment.bottomRight,
    transform: Matrix4.identity()
      ..translate(width - thickness, 0, 0)
      ..rotateY(pi * 90 / 180),
    child: Container(
      width: thickness,
      height: height,
      color: Colors.grey,
    ),
  );
}

Transform bottomPhone(double height, double width, double thickness) {
  return Transform(
    transform: Matrix4.identity()
      ..translate(0, height, 0)
      ..rotateZ(-pi * 90 / 180)
      ..rotateY(-pi * 90 / 180),
    child: Container(
      width: thickness,
      height: width,
      color: Colors.grey,
    ),
  );
}

Transform topPhone(double width, double thickness) {
  return Transform(
    transform: Matrix4.identity()
      ..translate(0, 0, 0)
      ..rotateZ(-pi * 90 / 180)
      ..rotateY(-pi * 90 / 180),
    child: Container(
      width: thickness,
      height: width,
      color: Colors.grey,
    ),
  );
}
