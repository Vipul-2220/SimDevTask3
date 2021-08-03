import 'package:flutter/material.dart';
import 'package:simdev_task3/Tabs/AddressBar.dart';
import 'package:simdev_task3/Tabs/OnLineBar.dart';

class WhereIsItHeld extends StatefulWidget {
  const WhereIsItHeld({Key? key}) : super(key: key);

  @override
  _WhereIsItHeldState createState() => _WhereIsItHeldState();
}

class _WhereIsItHeldState extends State<WhereIsItHeld> {

  bool showAddress = true;
  bool showOnLine = false;
  bool addressTap = true;
  bool onLineTap = false;

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
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70),
              child: Text(
                'Where is it held?',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 90),
              child: Container(
                height: 30,
                width: 170,
                color: Color(0xffF0F0F0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            color: addressTap == true? Colors.white : Color(0xffF0F0F0),
                            child: Center(
                              child: Text('Address',
                              style: TextStyle(
                                color: addressTap == true? Color(0xff7F71D9) : Color(0xff666666),
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            showAddress = true;
                            showOnLine = false;
                            onLineTap = false;
                            addressTap = true;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        child: Container(
                          color: onLineTap == true? Colors.white : Color(0xffF0F0F0),
                          child: Text('On Line',
                          style: TextStyle(
                            fontSize: 18,
                            color: onLineTap == true? Color(0xff7F71D9) : Color(0xff666666),
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            showOnLine = true;
                            showAddress = false;
                            onLineTap = true;
                            addressTap = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: showAddress == true? AdressBar() : OnLineBar(),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
