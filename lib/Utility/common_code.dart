import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

Widget buildCommonText(
  String text, {
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: TextStyle(
      color: color ?? AppColor.black,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
    ),
  );
}

//List Of Rashi in Marathi
List<String> rashiListInMarathi = [
  "मेष",
  "वृषभ",
  "मिथुन",
  "कर्क",
  "सिंह",
  "कन्या",
  "तुला",
  "वृश्चिक",
  "धनु",
  "मकर",
  "कुंभ",
  "मीन",
];

List<String> rashiListInEnglish = [
  "Aries",
  "Taurus",
  "Gemini",
  "Cancer",
  "Leo",
  "Virgo",
  "Libra",
  "Scorpio",
  "Sagittarius",
  "Capricorn",
  "Aquarius",
  "Pisces",
];

//List Of Varn in Marathi
List<String> varnListInMarathi = [
  "गोरा",
  "निमगोरा ",
  "गव्हाळ",
  "सावळा",
  "अति सावळा",
  "काळा",
];

List<String> varnListInEnglish = [
  "Very Fair",
  "Fair",
  "Light Natural",
  "Brown"
      "Dark Brown",
  "black",
];
