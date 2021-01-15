import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  primaryColor: Color(0xfffDD2762),
  scaffoldBackgroundColor:Color(0xfffF2F3F5),
  indicatorColor:Color(0xfffDD2762),
     
);

const colorPink = Color(0xfffDD2762);//color rosado
const fontFamilyMedium ="RobotoMedium";
const fontFamilyLigth ="RobotoLight";

const TextStyle textStyleTitle = TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontFamily: fontFamilyLigth,
  fontWeight: FontWeight.w600,
  letterSpacing: 2

);

const TextStyle textStyleTitleSearch = TextStyle(
  color: Colors.grey,
  fontSize: 20,
  fontFamily: fontFamilyLigth,
  fontWeight: FontWeight.w600,
  letterSpacing: 2

);

const TextStyle textStyleCardTitle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontFamily: fontFamilyMedium,
);
const TextStyle textStyleCardSubTitle = TextStyle(
  color: Colors.black38,
  fontSize: 13,
  fontFamily: fontFamilyMedium
);