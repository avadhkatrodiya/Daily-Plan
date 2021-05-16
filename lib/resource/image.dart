import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageWidget {
  static String sImagePath = 'assets/images/splashimages/';
  static String pImagePath = 'assets/images/profileimages/';
  static String cImagePath = 'assets/images/calanderimages/';
  static String sSImagePath = 'assets/images/secondSplash/';
  static List<String> cImages = ['image1.png', 'image2.png', 'image1.png'];
  // static List<String> paid = ["", 'paid.png', ""];

  static List<String> image = [
    'notification.png',
    'calender.png',
    'tick.png',
    'address.png'
  ];

  static List<String> social = ['facebook.png', 'twitter.png', 'gmail.png'];
  static Image img = Image.asset(
    '${sImagePath}logo.png',
    height: 20,
    width: 20,
  );
  static Image img2 = Image.asset(
    '${sImagePath}footer.png',
    fit: BoxFit.fill,
  );
  static Image img3 = Image.asset(
    '${sImagePath}plan1.png',
  );
  static Image img4 = Image.asset(
    '${sImagePath}plan2.png',
  );

  static Image img01 = Image.asset(
    '${sImagePath}1.png',
    height: 40,
    width: 40,
  );
  static Image img02 = Image.asset('${sImagePath}2.png');
  static Image img03 = Image.asset('${sImagePath}3.png');
  static Image img04 = Image.asset('${sImagePath}4.png');
  static Image profile = Image.asset(
    '${pImagePath}profile.jpeg',
    height: 50,
    width: 50,
  );
  static Image circle = Image.asset(
    '${pImagePath}circle.png',
    height: 80,
    width: 80,
  );

  static Image accountLeadingIcon(int index) {
    return Image.asset(
      '${ImageWidget.pImagePath}${image[index]}',
      height: 20,
      width: 20,
    );
  }

  static Image socialMediaIcon(int index) {
    return Image.asset(
      '${ImageWidget.pImagePath}${social[index]}',
      height: 20,
      width: 20,
    );
  }

  static Image cClock = Image.asset(
    '${cImagePath}clock.png',
    height: 15,
    width: 15,
  );
  static Image cImage(int index) {
    return Image.asset(
      '${ImageWidget.cImagePath}${cImages[index]}',
      height: 60,
      width: 60,
    );
  }

  /// Paid Image ////
  static Image paidImage(int index) {
    return Image.asset(
      '${ImageWidget.cImagePath}paid.png',
      height: 80,
      width: 80,
    );
  }

  // static Image cImage1 = Image.asset('${cImagePath}image1.png');
  // static Image cImage2 = Image.asset('${cImagePath}image2.png');
  static Image cMail = Image.asset(
    '${cImagePath}mail.png',
    height: 15,
    width: 15,
  );

  static Image cPhone = Image.asset(
    '${cImagePath}phone.png',
    height: 15,
    width: 15,
  );
  static Image cStar = Image.asset(
    '${cImagePath}star.png',
    height: 15,
    width: 15,
  );

  static Image sSBack = Image.asset(
    '${sSImagePath}backImage.png',
  );
}
