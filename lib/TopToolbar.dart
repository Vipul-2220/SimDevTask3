import 'package:flutter/material.dart';

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
                Container(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Color(0xff7F71D9),
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                Container(
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.black45,
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.black45,
                ),
                Container(
                  child: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black45,
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
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 40),
              child: Text('Create Event',
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