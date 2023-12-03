import 'package:flutter/material.dart';

import 'Components/HorizontalScroll.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key, required ScrollController this.HorScroll});
  final ScrollController HorScroll;
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
            controller: HorScroll,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: w,
                  color: Colors.amber,
                ),
                Container(
                  width: w,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: nav,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: nav),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: nav,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: nav,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: nav,
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
