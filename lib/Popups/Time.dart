import 'package:flutter/material.dart';
import 'package:simdev_task3/DropDowns/Time1.dart';
import 'package:simdev_task3/DropDowns/Time2.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  bool tap2 = false;
  String dropdownvalue5 = '9:00 AM';
  bool tap5 = false;
  bool tap3 = false;
  String dropdownvalue6 = '5:00 PM';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.keyboard_arrow_down),
          hintText: '$dropdownvalue5 - $dropdownvalue6',
          hintStyle: TextStyle(
            color: tap2 == true ? Colors.black : Colors.black12,
            fontSize: 18,
          ),
        ),
        onTap: () {
          setState(() {
            tap2 = true;
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Container(
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Start Time',
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              'End Time',
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DropdownButton<String>(
                              underline: Container(
                                height: 1.5,
                                color: Colors.black26,
                              ),
                              value: dropdownvalue5,
                              style: TextStyle(
                                color: tap5 == true
                                    ? Colors.black
                                    : Colors.black12,
                                fontSize: 20,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue5 = newValue!;
                                  tap3 = true;
                                });
                              },
                              items: <String>[
                                '9:00 AM',
                                '9:15 AM',
                                '9:30 AM',
                                '9:45 AM',
                                '10:00 AM',
                                '10:15 AM',
                                '10:30 AM'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            DropdownButton<String>(
                              underline: Container(
                                height: 1.5,
                                color: Colors.black26,
                              ),
                              value: dropdownvalue6,
                              style: TextStyle(
                                color: tap5 == true
                                    ? Colors.black
                                    : Colors.black12,
                                fontSize: 20,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue6 = newValue!;
                                  tap3 = true;
                                });
                              },
                              items: <String>[
                                '5:00 PM',
                                '5:15 PM',
                                '5:30 PM',
                                '5:45 PM',
                                '6:00 PM',
                                '6:15 PM',
                                '6:30 PM'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            child: Center(
                              child: GestureDetector(
                                child: const Text(
                                  'Clear',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff666666),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            child: Container(
                              height: 30,
                              width: 80,
                              color: Colors.black12,
                              child: Center(
                                child: GestureDetector(
                                  child: const Text(
                                    'Apply',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff7F71D9),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          });
        },
      ),
    );
  }
}
