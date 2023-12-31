import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {
  final ScrollController controller;
  final Widget child;
  final Axis scrollDirection;

  const HorizontalScroll(
      {required this.controller,
      required this.child,
      required this.scrollDirection,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: Scrollbar(
        controller: controller,
        child: SingleChildScrollView(
          controller: controller,
          scrollDirection: scrollDirection,
          physics: PageScrollPhysics(),
          child: child,
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
