import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simdev_task3/Popups/Url/BrowserURL.dart';
import 'package:simdev_task3/Popups/Url/CustomURL.dart';
import 'package:simdev_task3/Popups/Url/InstagramURL.dart';
import 'package:simdev_task3/Popups/Url/LinkedInURL.dart';
import 'package:simdev_task3/Popups/Url/TwitterURL.dart';
import 'package:simdev_task3/Popups/Url/facebookURL.dart';
import 'package:simdev_task3/Screens/ThirdScreen.dart';

class HowToGetInTouch extends StatefulWidget {
  const HowToGetInTouch({Key? key}) : super(key: key);

  @override
  _HowToGetInTouchState createState() => _HowToGetInTouchState();
}

class _HowToGetInTouchState extends State<HowToGetInTouch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 50),
              child: Text(
                'How to get in touch?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff363636),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Email id',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                cursorHeight: 25.0,
                decoration: InputDecoration(
                  focusColor: Color(0xff7F71D9),
                  hintText: 'xyz@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff7F71D9),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Add email',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Country',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Text(
                    'Phone',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 90,
                    child: TextField(
                      cursorHeight: 25.0,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black26,
                        ),
                        focusColor: Color(0xff7F71D9),
                        hintText: '  +91',
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff7F71D9),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    width: 193,
                    child: TextField(
                      cursorHeight: 25.0,
                      decoration: InputDecoration(
                        suffixIconConstraints: BoxConstraints(
                          maxHeight: 40,
                        ),
                        suffixIcon: CircleAvatar(
                            backgroundColor: Color(0xffF0F0F0),
                            child: SvgPicture.asset(
                              'icons/phone.svg',
                              height: 25,
                            )),
                        focusColor: Color(0xff7F71D9),
                        hintText: '4220568975',
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff7F71D9),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Add number',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return InstagramURL();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: Color(0xffF0F0F0),
                        child: SvgPicture.asset(
                          'icons/instagram.svg',
                          height: 20,
                        ),
                        radius: 25),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return FacebookURL();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: Color(0xffF0F0F0),
                        child: SvgPicture.asset(
                          'icons/facebook.svg',
                          height: 20,
                        ),
                        radius: 25),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return TwitterURL();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: Color(0xffF0F0F0),
                        child: SvgPicture.asset(
                          'icons/twitter.svg',
                          height: 20,
                        ),
                        radius: 25),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return LinkedIn();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: Color(0xffF0F0F0),
                        child: SvgPicture.asset(
                          'icons/linkedin.svg',
                          height: 20,
                        ),
                        radius: 25),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return BrowserURL();
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: CircleAvatar(
                          backgroundColor: Color(0xffF0F0F0),
                          child: SvgPicture.asset(
                            'icons/browser.svg',
                            height: 20,
                          ),
                          radius: 25),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return CustomURL();
                    },
                  );
                },
                child: CircleAvatar(
                    backgroundColor: Color(0xffF0F0F0),
                    child: Icon(
                      Icons.add,
                      color: Color(0xff666666),
                    ),
                    radius: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270.0, top: 20),
              child: Container(
                width: 95,
                color: Colors.white,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed(ThirdScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
