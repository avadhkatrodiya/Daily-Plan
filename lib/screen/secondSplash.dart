import 'package:flutter/material.dart';
import 'package:flutter_app_demo/resource/const.dart';
import 'package:flutter_app_demo/resource/image.dart';
import 'package:flutter_app_demo/screen/secondProfilePage.dart';
import 'package:get/get.dart';

class SecondSplash extends StatefulWidget {
  @override
  _SecondSplashState createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [topView(), bottomView(context)],
      ),
    );
  }

  Positioned bottomView(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
            color: pIconColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        width: Get.width,
        height: Get.height / 2.4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                SecondScreenString.ssTopText,
                style: kWhite18FontStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Text(
                SecondScreenString.ssCenterText,
                textAlign: TextAlign.center,
                style: ssWhite,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Skip',
                    style: ssTextWhite,
                  ),
                  Spacer(),
                  Text(
                    'Next',
                    style: ssTextWhite,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondProfilePage(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: circle1,
                            borderRadius: BorderRadius.circular(30)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Positioned topView() {
    return Positioned(
      top: -100,
      left: 50,
      child: Container(height: 700, width: 600, child: ImageWidget.sSBack),
    );
  }
}
