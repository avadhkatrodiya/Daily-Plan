import 'package:flutter/material.dart';
import 'package:flutter_app_demo/resource/const.dart';
import 'package:flutter_app_demo/resource/image.dart';
import 'package:flutter_app_demo/resource/image.dart';
import 'package:flutter_app_demo/screen/calenderPage.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> menu = ['Notifications', 'My Booking', 'My Plan', 'Address'];
  List<String> social = ['Facebook', 'Twitter', 'Gmail'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            TopView(),
            SecondView(context),
          ],
        ),
      ),
    );
  }

  Expanded SecondView(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SplashScreenString.pMenu1,
                    style: black16FontStyle,
                  ),
                  TopCenterView(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    SplashScreenString.pMenu2,
                    style: black16FontStyle,
                  ),
                  BottomView()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column BottomView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          social.length,
          (index) => Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    ImageWidget.socialMediaIcon(index),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      social[index],
                      style: pTextStyle,
                    )
                  ],
                ),
              )),
    );
  }

  Column TopCenterView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          menu.length,
          (index) => Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    ImageWidget.accountLeadingIcon(index),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      menu[index],
                      style: pTextStyle,
                    )
                  ],
                ),
              )),
    );
  }

  Align TopView() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          height: 80,
          width: 100,
          child: Stack(
            children: [
              Positioned(left: 10, child: ImageWidget.circle),
              Positioned(
                left: 20,
                top: 15,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: InkResponse(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CalenderPage(),
                              ));
                        },
                        child: ImageWidget.profile)),
              ),
              Positioned(
                top: 50,
                child: SmallContainer(color: circle1),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: SmallContainer(color: circle2),
              ),
              Positioned(
                right: 20,
                bottom: 0,
                child: SmallContainer(color: circle3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container SmallContainer({Color color}) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
