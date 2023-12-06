import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/First/Portfolios/FirstPortfolio.dart';
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
    return SizedBox(
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
                Portfolio001(),
                for (int i = 0; i < 4; i++)
                  Container(
                    width: w,
                    height: h,
                    color: i % 2 == 0 ? Colors.blueGrey : Colors.amber,
                  )
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