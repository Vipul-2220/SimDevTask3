import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/RegistrationDetails.dart';

class SwitchToggle extends StatefulWidget {
  bool isSelected;
  SwitchToggle(this.isSelected);

  @override
  _SwitchToggleState createState() => _SwitchToggleState();
}

class _SwitchToggleState extends State<SwitchToggle> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: Color(0xff7F71D9),
      activeColor: Colors.white,
      value: widget.isSelected,
      onChanged: (bool value) {
        setState(() {
          widget.isSelected = value;
        });
      },
    );
  }
}

// Switch(
// value: widget.isSelected,
// activeTrackColor: Color(0xff7F71D9),
// activeColor: Colors.white,
// onChanged: (value){
// setState(() {
// widget.isSelected = value;
// });
// },
// )
