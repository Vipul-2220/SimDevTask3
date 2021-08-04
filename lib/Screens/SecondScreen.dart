import 'package:flutter/material.dart';
import 'package:simdev_task3/Cards/HowToGetInTouch.dart';
import 'package:simdev_task3/Cards/MoreAboutYourEvent.dart';
import 'package:simdev_task3/TopToolbar/TopToolbar.dart';
import 'package:simdev_task3/TopToolbar/TopToolbar2.dart';

class SecondScreen extends StatefulWidget {

  static String id = 'SecondScreen';

  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TopToolbar2(),
                ),
                MoreAboutYourEvent(),
                HowToGetInTouch(),
                // WhereIsItHeld(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
