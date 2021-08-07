import 'package:flutter/material.dart';
import 'package:simdev_task3/Cards/AboutEvent.dart';
import 'package:simdev_task3/Cards/WhereIsItHeld.dart';
import 'package:simdev_task3/TopToolbar/TopToolbar.dart';

class FirstScreen extends StatefulWidget {

  static String id = 'FirstScreen';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Color(0xffE5E5E5),
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 15,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color(0xffF9F9F9),
          height: 90.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  Text('Home',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  Text('Create New',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  Text('EAG',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  Text('Profile',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text(
                        'New Event',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TopToolbar(),
                ),
                AboutEvent(),
                WhereIsItHeld(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
