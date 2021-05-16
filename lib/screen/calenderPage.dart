import 'package:flutter/material.dart';
import 'package:flutter_app_demo/resource/const.dart';
import 'package:flutter_app_demo/resource/image.dart';
import 'package:flutter_app_demo/screen/secondSplash.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Column(
          children: [topView(), bottomView(context)],
        ),
      ),
    );
  }

  Expanded bottomView(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          ClipPath(
            clipper: MyCustomClipPath(),
            child: Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: Container(
                            child: Text(
                                '${DateFormat('dd-MMMM-yyyy').format(now)}',
                                style: dateTextColor),
                          ))),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      itemCount: CalenderScreenString.name.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: profileContainerBox(index),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondSplash(),
                    ));
              },
              child: Icon(
                Icons.keyboard_arrow_down,
                color: borderBoxText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack profileContainerBox(int index) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: Get.width,
          // color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    CalenderScreenString.time[index],
                    style: black16FontStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: Get.width,
                  color: calenderContainer,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          CalenderScreenString.name[index],
                          style: calenderMainText,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            CalenderScreenString.cTask,
                            style: cTextColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 20,
                            width: Get.width,
                            child: Row(
                              children: [
                                ImageWidget.cClock,
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      CalenderScreenString.timezone[index],
                                      style: calenderTimeText,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Text(
                                CalenderScreenString.cRating,
                                style: cTextColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ImageWidget.cStar,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ImageWidget.cStar,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ImageWidget.cStar,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              ImageWidget.cPhone,
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: ImageWidget.cMail,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 20,
          top: 10,
          child: ImageWidget.cImage(index),
        ),
        Positioned(
            bottom: 10,
            right: 20,
            child: Text(
              CalenderScreenString.price[index],
              style: calenderMainText,
            )),
        Positioned(
          right: 0,
          top: 80,
          child: index == 1 ? ImageWidget.paidImage(index) : SizedBox(),
        )
      ],
    );
  }

  Column topView() {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              CalenderScreenString.title,
              style: kWhite18FontStyle,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios_sharp,
              size: 14,
              color: white,
            ),
            Text('${DateFormat('d MMMM yyyy').format(now)}',
                style: whiteLessBold14),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 14,
              color: white,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                CalenderScreenString.days.length,
                (index) => selectedWeekDays(
                    color: DateFormat('EEEE').format(DateTime.now()) ==
                            CalenderScreenString.days[index]
                        ? calenderCircle
                        : Colors.transparent,
                    title: CalenderScreenString.days[index].substring(0, 1))),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                DateTime(now.year, now.month + 1, 0).day,
                (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: selectedWeekDays(
                        color: now.day == index + 1
                            ? calenderCircle
                            : Colors.transparent,
                        title: '${index + 1}'))),
          ),
        ),
      ],
    );
  }

  CircleAvatar selectedWeekDays({String title, Color color}) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: color,
      child: Text(
        title,
        // CalenderScreenString.dayNo[index],
        style: whiteLessBold14,
      ),
    );
  }
}

class MyCustomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2 - 50, 0);
    path.quadraticBezierTo((size.width / 2), 50, (size.width / 2 + 50), 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;

    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
