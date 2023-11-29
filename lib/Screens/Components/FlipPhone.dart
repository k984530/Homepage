import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterweb/Data/Projects.dart';
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
  Projects project = Projects();
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(
        reverse: false,
      );
    _animation = Tween(end: 5.0, begin: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
    Timer.periodic(Duration(seconds: 3), (timer) {
      project.ReturnImgAddr();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
          _animation.value > 2 && _animation.value <= 4
              ? bottomPhone(Phone_Height, Phone_Width, thickness)
              : topPhone(Phone_Width, thickness),
          Transform(
            transform: _animation.value > 1 && _animation.value < 3
                ? (Matrix4.identity()..translate(0, 0, thickness))
                : (Matrix4.identity()..translate(0, 0, 0)),
            child: Container(
              child: _animation.value > 1 && _animation.value < 3
                  ? Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      child: Image.asset(
                        project.fullAddr,
                        fit: BoxFit.fill,
                      ),
                    )
                  : Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      child: Image.asset(
                        project.fullAddr,
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
          ),
          _animation.value < 0.8 ||
                  (_animation.value > 2.8 && _animation.value < 4.8)
              ? rightPhone(Phone_Height, thickness)
              : leftPhone(Phone_Height, Phone_Width, thickness),
          _animation.value < 0.8 ||
                  (_animation.value > 2.8 && _animation.value < 4.8)
              ? leftPhone(Phone_Height, Phone_Width, thickness)
              : rightPhone(Phone_Height, thickness),
          Transform(
            transform: _animation.value > 1 && _animation.value < 3
                ? (Matrix4.identity()..translate(0, 0, 0))
                : (Matrix4.identity()..translate(0, 0, thickness)),
            child: Container(
              child: _animation.value <= 1 || _animation.value >= 3
                  ? Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      child: Image.asset(
                        project.fullAddr,
                        fit: BoxFit.fill,
                      ),
                    )
                  : Container(
                      width: Phone_Width,
                      height: Phone_Height,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: Image.asset(
                          project.fullAddr,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
            ),
          ),
          _animation.value < 2 || _animation.value > 4
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
