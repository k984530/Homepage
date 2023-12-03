import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SkillSet() => Positioned(
      top: 125,
      right: 25,
      width: 350,
      child: Column(
        children: [
          Text(
            "Skill Set",
            style: GoogleFonts.blackHanSans(
              fontSize: 30,
              color: Colors.white.withOpacity(0.85),
            ),
          ),
          Row(
            children: [
              Spacer(),
              Image.asset(
                'assets/skillsets/flutter.png',
                width: 150,
                height: 80,
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/skillsets/dart.png',
                  width: 150,
                  height: 80,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/skillsets/python.png',
                  width: 150,
                  height: 80,
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/skillsets/flask.png',
                  width: 150,
                  height: 80,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/skillsets/firebase.png',
                  width: 150,
                  height: 80,
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/skillsets/django.png',
                  width: 150,
                  height: 80,
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
