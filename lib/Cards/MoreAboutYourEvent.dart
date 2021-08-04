import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simdev_task3/DropDowns/AlertTime.dart';
import 'package:simdev_task3/DropDowns/AlertType.dart';

class MoreAboutYourEvent extends StatefulWidget {
  const MoreAboutYourEvent({Key? key}) : super(key: key);

  @override
  _MoreAboutYourEventState createState() => _MoreAboutYourEventState();
}

class _MoreAboutYourEventState extends State<MoreAboutYourEvent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 30),
              child: Text(
                'More about your Event!',
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
                'Event Description',
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
                  hintText: 'More about the event',
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
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffF0F0F0),
                  child: Icon(
                    Icons.attach_file,
                    color: Color(0xff666666),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffF0F0F0),
                  child: Icon(
                    Icons.sentiment_satisfied_alt,
                    color: Color(0xff666666),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffF0F0F0),
                  child: SvgPicture.asset(
                    'icons/Vector.svg',
                    height: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Text format',
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Text(
                    '0/2600',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF0F0F0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xff666666),
                      ),
                      Text(
                        'Add image',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Alerts',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  AlertType(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF0F0F0),
                      ),
                      child: Center(
                        child: Text('30',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AlertTime(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.close,
                    color: Color(0xff666666),
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Add alert',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
