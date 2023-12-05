import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'Components/HorizontalScroll.dart';
import 'MainScreen.dart';

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({super.key, required ScrollController this.HorScroll});
  final ScrollController HorScroll;

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int index = 1;
  double scrollPos = 0;
  @override
  void initState() {
    super.initState();
    widget.HorScroll.addListener(() {
      scrollPos = widget.HorScroll.offset;
      setState(() {
        index = (scrollPos / w).round() + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Color nav = Colors.white;
    return Container(
      width: w,
      height: h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          HorizontalScroll(
            controller: widget.HorScroll,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    width: w,
                    height: h,
                    color: i % 2 == 0 ? Colors.amber : Colors.blue,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          height: h,
                          width: w * 0.4,
                          child: Container(
                            color: Colors.white54,
                            alignment: Alignment.center,
                            child: Text("Img"),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: w * 0.4,
                          height: h * 0.1,
                          width: w * 0.6,
                          child: Container(
                            color: Colors.white54,
                            alignment: Alignment.center,
                            child: Text(
                              "FisherMap",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100 + h * 0.1,
                          right: w * 0.4,
                          height: h * 0.9 - 100,
                          width: w * 0.6,
                          child: Container(
                            color: Colors.white54,
                            alignment: Alignment.center,
                            child: Text(
                              "Explain(Lang, Skill, content, period)",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Row(
              children: [
                for (int i = 1; i <= 5; i++)
                  InkWell(
                    onTap: () {
                      widget.HorScroll.animateTo(
                        w * (i - 1),
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                      setState(() {
                        index = i;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: index == i ? 30 : 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 2.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5), color: nav),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
