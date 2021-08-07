import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simdev_task3/Screens/FirstScreen.dart';
import 'package:simdev_task3/Screens/FourthScreen.dart';
import 'package:simdev_task3/Screens/SecondScreen.dart';
import 'package:simdev_task3/Screens/ThirdScreen.dart';

class TopToolbar extends StatefulWidget {
  const TopToolbar({Key? key}) : super(key: key);

  @override
  _TopToolbarState createState() => _TopToolbarState();
}

class _TopToolbarState extends State<TopToolbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(FirstScreen.id);
                  },
                  child: Container(
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Color(0xff7F71D9),
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(SecondScreen.id);
                  },
                  child: Container(
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.black45,
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(ThirdScreen.id);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.black45,
                        )
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'icons/dollar.svg',
                        color: Colors.black45,
                        height: 18,
                      ),
                      radius: 10,
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(FourthScreen.id);
                  },
                  child: Container(
                    child: Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 40),
              child: Text('Create Event',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff7F71D9),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
