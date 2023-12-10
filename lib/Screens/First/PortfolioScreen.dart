import 'package:flutter/material.dart';
import 'package:flutterweb/Data/HorIndex.dart';
import 'package:flutterweb/Screens/First/Portfolios/Portfolio.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'Components/HorizontalScroll.dart';
import 'MainScreen.dart';
import 'Portfolios/PortfolioData.dart';

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({super.key, required ScrollController this.HorScroll});
  final ScrollController HorScroll;

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

int index = 1;

class _PortfolioScreenState extends State<PortfolioScreen> {
  double scrollPos = 0;

  @override
  void initState() {
    super.initState();
    RxInt i = Get.put(HorIndex()).index;
    widget.HorScroll.addListener(() {
      scrollPos = widget.HorScroll.offset;
      setState(() {
        i.value = (scrollPos / w).round() + 1;
      });
    });
  }

  Color nav = Colors.black87;
  @override
  RxInt Idx = Get.put(HorIndex()).index;
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => AnimatedContainer(
              duration: Duration(milliseconds: 200),
              color: TitleColors[Idx.value - 1],
            ),
          ),
          HorizontalScroll(
            controller: widget.HorScroll,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Portfolio01(),
                Portfolio02(),
                Portfolio03(),
                Portfolio04(),
                Portfolio05(),
                Portfolio06(),
              ],
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 45,
              child: Row(
                children: [
                  for (int i = 1; i <= 6; i++)
                    InkWell(
                      onTap: () {
                        widget.HorScroll.animateTo(
                          w * (i - 1),
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear,
                        );
                        setState(() {
                          Idx.value = i;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: Idx.value == i ? 30 : 10,
                        height: 10,
                        margin: EdgeInsets.symmetric(horizontal: 2.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5), color: nav),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
