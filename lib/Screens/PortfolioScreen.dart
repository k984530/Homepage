import 'package:flutter/material.dart';

import 'Components/HorizontalScroll.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key, required ScrollController this.HorScroll});
  final ScrollController HorScroll;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      height: h,
      child: Stack(
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
          Container(
            height: 100,
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
