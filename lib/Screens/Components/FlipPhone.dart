import 'dart:math';

import 'package:flutter/material.dart';
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
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(
            reverse: true,
          );
    _animation = Tween(end: 1.0, begin: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.bottomRight,
      transform: Matrix4.identity()
        ..rotate(vector.Vector3(2, 3, 0), pi * _animation.value),
      // ..rotateY(pi * _animation.value),
      // ..rotateX(pi * 30 / 180)
      child: Card(
          child: _animation.value <= 0.5
              ? Container(
                  color: Colors.blue,
                  width: 240,
                  height: 360,
                )
              : Container(
                  width: 240,
                  height: 360,
                  color: Colors.green,
                )),
    );
  }
}
