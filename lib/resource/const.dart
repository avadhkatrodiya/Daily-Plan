import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color fPlan = Color(0xffDFDEFF);
const Color fInActiveColor = Color(0xffDBDBDB);
const Color fActiveColor = Color(0xffDC4F89);
const Color backGroundColor = Color(0xff2F2182);
const Color borderBoxColor = Color(0xffD9D9D9);
const Color borderBoxText = Color(0xff9B9B9B);
const Color transparent = Colors.transparent;
const Color circle1 = Color(0xffFFBF67);
const Color circle2 = Color(0xffFF6C46);
const Color circle3 = Color(0xff10D592);
const Color pTextColor = Color(0xff404040);
const Color pIconColor = Color(0xff2F2182);
const Color calenderCircle = Color(0xffFFBF67);
const Color calenderContainer = Color(0xffDFDEFF);
const Color calenderText = Color(0xff5C4DB1);

class SplashScreenString {
  static String text1 = 'Nimbl';
  static String text2 = 'Clean Home';
  static String text3 = 'Clean Life.';
  static String text4 = 'Book Cleaners at the Comfort';
  static String text5 = 'of you home.';
  static String fMenu1 = 'Selected Cleaning';
  static String fMenu2 = 'Selected Frequency';
  static String fMenu3 = 'Selected Extras';
  static String plan1 = 'Initial Cleaning';
  static String plan2 = 'Upkeep Cleaning';
  static String b1 = 'Inside Fridge';
  static String b2 = 'Organizing';
  static String b3 = 'Small Blinds';
  static String b4 = 'Patio';
  static String pMenu1 = 'Account';
  static String pMenu2 = 'Share';
}

// static Image socialMediaIcon(int index) {
// return Image.asset(
// '${ImageWidget.imagePath}${social[index]}',
// height: 20,
// width: 20,
// );

class CalenderScreenString {
  static String cTask = 'Upkeep Cleaning';
  static String cRating = 'Client Rating';
  static List<String> days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  static List<String> name = [
    'Michael Hamilton',
    'Alexandra johnson',
    'Michael Hamilton'
  ];
  static List<String> time = ['10 AM', '12 PM', '3 PM'];
  static List<String> price = ['50\$', '', '150\$'];
  static List<String> timezone = ['10AM - 11AM', '12PM - 1PM', '3PM - 6PM'];
  static String title = 'Cleaner Calendar';
}

class SecondScreenString {
  static String ssTopText = 'Cleaning On Demand';
  static String ssCenterText =
      'Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.';
}

const TextStyle kWhite18FontStyle =
    TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.bold);

const TextStyle kCenterFontStyle =
    TextStyle(color: white, fontSize: 30, fontWeight: FontWeight.bold);

const TextStyle whiteLessBold =
    TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.w400);

const TextStyle kBottomStyle = TextStyle(
    color: backGroundColor, fontSize: 20, fontWeight: FontWeight.w500);

const TextStyle black16FontStyle =
    TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.bold);

const TextStyle lSmallFontStyle =
    TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500);

const TextStyle lBoxText =
    TextStyle(color: borderBoxText, fontSize: 12, fontWeight: FontWeight.bold);
const TextStyle pTextStyle =
    TextStyle(color: pTextColor, fontSize: 16, fontWeight: FontWeight.w400);
const TextStyle whiteLessBold14 =
    TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.w400);
TextStyle dateTextColor = TextStyle(
    fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5));
TextStyle calenderMainText =
    TextStyle(fontWeight: FontWeight.bold, color: calenderText, fontSize: 14);
TextStyle cTextColor =
    TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 12);
TextStyle calenderTimeText =
    TextStyle(fontWeight: FontWeight.bold, color: calenderText, fontSize: 10);
TextStyle ssWhite =
    TextStyle(fontWeight: FontWeight.w400, color: white, fontSize: 18);
TextStyle ssTextWhite =
    TextStyle(fontWeight: FontWeight.w300, color: white, fontSize: 14);
const TextStyle ssText =
    TextStyle(color: calenderCircle, fontSize: 16, fontWeight: FontWeight.bold);
