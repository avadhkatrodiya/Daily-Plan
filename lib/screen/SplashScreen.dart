import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/resource/const.dart';
import 'package:flutter_app_demo/resource/image.dart';
import 'package:get/get.dart';

import 'FirstScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   Future.delayed(Duration(seconds: 10), () {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => FirstPage(),
  //         ));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: Get.height,
              width: Get.width,
              color: backGroundColor,
              child: SafeArea(
                child: Column(
                  children: [
                    headerView(),
                    centerView(),
                    footerView(),
                    bottomView(context),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget headerView() {
    return Padding(
      padding: EdgeInsets.only(
        top: Get.height * 0.030,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWidget.img,
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              SplashScreenString.text1,
              style: kWhite18FontStyle,
            ),
          )
        ],
      ),
    );
  }

  Widget centerView() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                SplashScreenString.text2,
                style: kCenterFontStyle,
              ),
              Text(
                SplashScreenString.text3,
                style: kCenterFontStyle,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  SplashScreenString.text4,
                  style: whiteLessBold,
                ),
                Text(
                  SplashScreenString.text5,
                  style: whiteLessBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget footerView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ImageWidget.img2,
      ),
    );
  }

  Align bottomView(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: InkResponse(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstPage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
            height: 60,
            width: 200,
            child: Center(
              child: Text(
                'Get Started',
                style: kBottomStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
