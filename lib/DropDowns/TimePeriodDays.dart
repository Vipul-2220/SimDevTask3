import 'package:flutter/material.dart';

class TimePeriodDays extends StatefulWidget {
  const TimePeriodDays({Key? key}) : super(key: key);

  @override
  _TimePeriodDaysState createState() => _TimePeriodDaysState();
}

class _TimePeriodDaysState extends State<TimePeriodDays> {

  String dropdownvalue2 = 'Days';

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
