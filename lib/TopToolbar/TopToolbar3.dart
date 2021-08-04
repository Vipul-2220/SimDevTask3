import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopToolbar3 extends StatefulWidget {
  const TopToolbar3({Key? key}) : super(key: key);

  @override
  _TopToolbar3State createState() => _TopToolbar3State();
}

class _TopToolbar3State extends State<TopToolbar3> {
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
                Container(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Color(0xff7F71D9),
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Color(0xff7F71D9),
                ),
                Container(
                  child: Icon(
                    Icons.info_outline,
                    color: Color(0xff7F71D9),
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                Container(
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
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                Container(
                  child: Icon(
                    Icons.check_circle_outline_outlined,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 110),
              child: Text('Event Details',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff7F71D9),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
