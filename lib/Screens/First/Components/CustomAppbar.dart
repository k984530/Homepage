import 'package:flutter/material.dart';
import 'package:flutterweb/Data/HorIndex.dart';
import 'package:flutterweb/Screens/First/PortfolioScreen.dart';
import 'package:flutterweb/Screens/First/Portfolios/PortfolioData.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required ScrollController this.VerScroll});
  final ScrollController VerScroll;
  Color fontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Obx(
      () => AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: TitleColors[Get.put(HorIndex()).index.value - 1],
          border: Border.all(
            color: Colors.white38,
          ),
        ),
        alignment: Alignment.center,
        child: SizedBox(
          width: 1200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 55,
              ),
              InkWell(
                onTap: () {
                  VerScroll.animateTo(VerScroll.position.minScrollExtent,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease);
                },
                child: Text(
                  "C.Won",
                  style: GoogleFonts.dancingScript(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: fontColor,
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  VerScroll.animateTo(h,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease);
                },
                child: Text(
                  "Portfolio",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: fontColor,
                  ),
                ),
              ),
              SizedBox(
                width: 55,
              ),
              InkWell(
                onTap: () {
                  VerScroll.animateTo(h * 2,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease);
                },
                child: Text(
                  "Log",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: fontColor,
                  ),
                ),
              ),
              SizedBox(
                width: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
