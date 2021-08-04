import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simdev_task3/Screens/SecondScreen.dart';

class AdressBar extends StatefulWidget {
  const AdressBar({Key? key}) : super(key: key);

  @override
  _AdressBarState createState() => _AdressBarState();
}

class _AdressBarState extends State<AdressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Area',
            style: TextStyle(
              color: Color(0xff666666),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            cursorHeight: 25.0,
            decoration: InputDecoration(
              focusColor: Color(0xff7F71D9),
              hintText: 'Lilabagh',
              hintStyle: TextStyle(
                color: Colors.black26,
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
          height: 30,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Door no.',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Text(
                    'Street',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 50,
                    width: 150,
                    child: TextField(
                      cursorHeight: 25.0,
                      decoration: InputDecoration(
                        focusColor: Color(0xff7F71D9),
                        hintText: '57/8',
                        hintStyle: TextStyle(
                          color: Colors.black26,
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
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 50,
                    width: 190,
                    child: TextField(
                      cursorHeight: 25.0,
                      decoration: InputDecoration(
                        focusColor: Color(0xff7F71D9),
                        hintText: '87 Sean Manors',
                        hintStyle: TextStyle(
                          color: Colors.black26,
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
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'City',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Text(
                    'Pin',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 50,
                    width: 150,
                    child: TextField(
                      cursorHeight: 25.0,
                      decoration: InputDecoration(
                        focusColor: Color(0xff7F71D9),
                        hintText: 'Mumbai',
                        hintStyle: TextStyle(
                          color: Colors.black26,
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
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 50,
                    width: 190,
                    child: TextField(
                      cursorHeight: 25.0,
                      decoration: InputDecoration(
                        focusColor: Color(0xff7F71D9),
                        hintText: '422056',
                        hintStyle: TextStyle(
                          color: Colors.black26,
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
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Name of address',
            style: TextStyle(
              color: Color(0xff666666),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            cursorHeight: 25.0,
            decoration: InputDecoration(
              focusColor: Color(0xff7F71D9),
              hintText: 'Office',
              hintStyle: TextStyle(
                color: Colors.black26,
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
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Color(0xffF0F0F0),
                height: 30,
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SvgPicture.asset('icons/Upload.svg',
                      height: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text('Upload photos of location',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 95,
                color: Colors.white,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  onPressed: (){
                    Navigator.of(context).popAndPushNamed(SecondScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.chevron_right,
                      color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
