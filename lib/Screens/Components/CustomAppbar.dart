import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required ScrollController this.VerScroll});
  final ScrollController VerScroll;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 55,
          ),
          GestureDetector(
            onTap: () {
              VerScroll.animateTo(VerScroll.position.minScrollExtent,
                  duration: Duration(milliseconds: 200), curve: Curves.ease);
            },
            child: Text(
              "C.Won",
              style: GoogleFonts.dancingScript(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              VerScroll.animateTo(h,
                  duration: Duration(milliseconds: 200), curve: Curves.ease);
            },
            child: Text(
              "Portfolio",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(
            width: 55,
          ),
          GestureDetector(
            onTap: () {
              VerScroll.animateTo(h * 2,
                  duration: Duration(milliseconds: 200), curve: Curves.ease);
            },
            child: Text(
              "Log",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(
            width: 55,
          ),
        ],
      ),
    );
  }
}
