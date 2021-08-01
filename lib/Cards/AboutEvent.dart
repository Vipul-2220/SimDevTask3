import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AboutEvent extends StatefulWidget {
  const AboutEvent({Key? key}) : super(key: key);

  @override
  _AboutEventState createState() => _AboutEventState();
}

class _AboutEventState extends State<AboutEvent> {

  bool is_checked = false;
  bool tap = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;
  bool tap5 = false;
  final dateformate = DateFormat('dd MMM yy');
  String dropdownvalue = '1';
  String dropdownvalue2 = 'Days';
  String dropdownvalue3 = 'Doesn\'t repeat';
  String dropdownvalue4 = 'Social';
  String dropdownvalue5 = '9:00 AM';
  String dropdownvalue6 = '5:00 PM';

  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2025),
    );

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

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
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70),
              child: Text(
                'About your Event',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Add Title',
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
                    hintText: 'Event Name',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff7F71D9),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start Date',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 140,
                        child: TextField(
                          cursorColor: Colors.white30,
                          readOnly: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            hintText: (dateformate.format(_date).toString()),
                            hintStyle: TextStyle(
                              color:
                                  tap == true ? Colors.black : Colors.black12,
                              fontSize: 18,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              tap = true;
                              _selectDate(context);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time Period',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black12,
                            ),
                            child: DropdownButton<String>(
                              elevation: 0,
                              value: dropdownvalue,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black87,
                              ),
                              style: const TextStyle(
                                  color: Color(0xff666666), fontSize: 18),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                              items: <String>[
                                '1',
                                '2',
                                '3',
                                '4',
                                '5',
                                '6',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black12,
                            ),
                            child: DropdownButton<String>(
                              elevation: 0,
                              value: dropdownvalue2,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black87,
                              ),
                              style: const TextStyle(
                                color: Color(0xff666666),
                                fontSize: 18,
                              ),
                              underline: null,
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue2 = newValue!;
                                });
                              },
                              items: <String>[
                                'Days',
                                'Months',
                                'Years'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 30),
              child: Text(
                'Time',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 140,
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                        hintText: '9AM - 5PM',
                        hintStyle: TextStyle(
                          color: tap2 == true ? Colors.black : Colors.black12,
                          fontSize: 18,
                        ),
                      ),
                      onTap: (){
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
                                          Text('Start Time',
                                            style: TextStyle(
                                              color: Color(0xff666666),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(width: 100,),
                                          Text('End Time',
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
                                              color: tap4 == true ? Colors.black : Colors.black12,
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
                                          SizedBox(width: 70,),
                                          DropdownButton<String>(
                                            underline: Container(
                                              height: 1.5,
                                              color: Colors.black26,
                                            ),
                                            value: dropdownvalue6,
                                            style: TextStyle(
                                              color: tap5 == true ? Colors.black : Colors.black12,
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
                                              child: const Text('Clear',
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
                                                child: const Text('Apply',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0),
                    child: Container(
                      child: Row(
                        children: [
                          new Checkbox(
                              activeColor: Color(0xff7F71D9),
                              side: BorderSide(
                                color: Color(0xff7F71D9),
                                width: 2,
                              ),
                              value: is_checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  is_checked = value!;
                                });
                              }),
                          Text(
                            'All Day',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Time Zone',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black12,
                      ),
                      child: DropdownButton<String>(
                        elevation: 0,
                        value: dropdownvalue3,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black87,
                        ),
                        style: const TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                        ),
                        underline: null,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue3 = newValue!;
                          });
                        },
                        items: <String>[
                          'Doesn\'t repeat',
                          'Daily',
                          'Weekly on a day',
                          'Monthly on a day',
                          'Annually on Jun 7',
                          'Every weekday',
                          'Custom'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 60),
              child: Text(
                'Category',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Container(
                    width: 230,
                    child:
                        DropdownButton<String>(
                          underline: Container(
                            height: 1.5,
                            color: Colors.black26,
                          ),
                          value: dropdownvalue4,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black45,
                            ),
                          ),
                          style: TextStyle(
                            color: tap3 == true ? Colors.black : Colors.black12,
                            fontSize: 20,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue4 = newValue!;
                              tap3 = true;
                            });
                          },
                          items: <String>[
                            'Social',
                            'Sports',
                            'Education',
                            'Culture',
                            'Career',
                            'Entertainment',
                            'Custom'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10,),
                      Text('Blue',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
