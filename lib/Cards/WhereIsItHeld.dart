import 'package:flutter/material.dart';

class WhereIsItHeld extends StatefulWidget {
  const WhereIsItHeld({Key? key}) : super(key: key);

  @override
  _WhereIsItHeldState createState() => _WhereIsItHeldState();
}

class _WhereIsItHeldState extends State<WhereIsItHeld> {
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
                width: 180,
                color: Color(0xffF0F0F0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 20,
                        width: 80,
                        color: Colors.white,
                        child: Center(
                          child: Text('Address',
                          style: TextStyle(
                            color: Color(0xff7F71D9),
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text('On Line',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff666666),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
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
            SizedBox(height: 30,),
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
            SizedBox(height: 30,),
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
            SizedBox(height: 30,),
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
            SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}
