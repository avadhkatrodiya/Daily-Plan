import 'package:flutter/material.dart';
import 'package:flutter_app_demo/resource/const.dart';
import 'package:flutter_app_demo/resource/image.dart';
import 'package:flutter_app_demo/screen/profilepage.dart';
import 'package:get/get.dart';

enum Plan { plan1, plan2 }

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Plan selectedPlan = Plan.plan1;
  int selectedBox = 0;

  onSelected(int index) {
    setState(() {
      selectedBox = index;
    });
  }

  _FirstPageState();

  List<String> freqList = ['Weekly', 'Bi-weekly', 'Monthly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        children: [
          TopText(),
          Expanded(
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                height: Get.height,
                width: Get.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        SplashScreenString.fMenu1,
                        style: black16FontStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TopView(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        SplashScreenString.fMenu2,
                        style: black16FontStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CenterView(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        SplashScreenString.fMenu3,
                        style: black16FontStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FooterView()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row TopView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Plan1(),
        SizedBox(
          width: 10,
        ),
        Plan2()
      ],
    );
  }

  Row CenterView() {
    return Row(
      children: List.generate(
        freqList.length,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 5 : 0),
            child: ReusableCard(text: freqList[index], index: index),
          ),
        ),
      ),
    );
  }

  Row FooterView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundContainer(
                text: SplashScreenString.b1,
                cChild: ImageWidget.img01,
                sColor: fActiveColor,
                count: '4'),
            SizedBox(
              height: 15,
            ),
            // notification: Notification(count: '4')),
            RoundContainer(
                text: SplashScreenString.b4,
                cChild: ImageWidget.img04,
                sColor: transparent,
                count: ''),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundContainer(
                text: SplashScreenString.b2,
                cChild: ImageWidget.img02,
                sColor: transparent,
                count: ''),
            SizedBox(
              height: 15,
            ),
            // notification: Notification(count: '4')),
            RoundContainer(
                text: SplashScreenString.b2,
                cChild: ImageWidget.img02,
                sColor: transparent,
                count: ''),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundContainer(
                text: SplashScreenString.b3,
                cChild: ImageWidget.img03,
                sColor: fActiveColor,
                count: '10'),
            SizedBox(
              height: 15,
            ),
            // notification: Notification(count: '4')),
            RoundContainer(
                text: SplashScreenString.b3,
                cChild: ImageWidget.img03,
                sColor: fActiveColor,
                count: '10'),
          ],
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget RoundContainer({
    Widget cChild,
    Widget notification,
    String text,
    String count,
    Color sColor,
  }) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Color(0xff2F2182), shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: cChild,
              ),
            ),
            Text(text),
          ],
        ),
        Positioned(
          right: 5,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(color: sColor, shape: BoxShape.circle),
            child: Center(
                child: Text(
              count,
              style: TextStyle(color: white),
            )),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget ReusableCard({String text, int index}) {
    return GestureDetector(
      onTap: () {
        onSelected(index);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: selectedBox == index ? fActiveColor : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: selectedBox == index
                ? null
                : Border.all(color: borderBoxColor, width: 2)),
        child: Center(
          child: Text(
            text,
            style: lBoxText.copyWith(
              color: selectedBox == index ? white : borderBoxText,
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded Plan1() {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: fPlan, borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ));
                    },
                    child: ImageWidget.img3)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            SplashScreenString.plan1,
            style: lSmallFontStyle,
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedPlan = Plan.plan1;
              });
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color:
                    selectedPlan == Plan.plan1 ? fActiveColor : fInActiveColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: selectedPlan == Plan.plan1
                  ? Icon(
                      Icons.check,
                      size: 15,
                      color: white,
                    )
                  : SizedBox(),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded Plan2() {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: fPlan, borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ImageWidget.img4),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            SplashScreenString.plan2,
            style: lSmallFontStyle,
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedPlan = Plan.plan2;
              });
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: selectedPlan == Plan.plan2
                      ? fActiveColor
                      : fInActiveColor,
                  borderRadius: BorderRadius.circular(20)),
              child: selectedPlan == Plan.plan2
                  ? Icon(
                      Icons.check,
                      size: 15,
                      color: white,
                    )
                  : SizedBox(),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding TopText() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Text(
        'Your Plan',
        style: kWhite18FontStyle,
      ),
    );
  }
}
