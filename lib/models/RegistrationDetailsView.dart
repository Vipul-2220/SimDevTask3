import 'package:flutter/material.dart';
import 'package:simdev_task3/SwitchToggle.dart';

class RegistrationDetailsView extends StatefulWidget {

  String name;

  RegistrationDetailsView(this.name);

  @override
  _RegistrationDetailsViewState createState() => _RegistrationDetailsViewState();
}

class _RegistrationDetailsViewState extends State<RegistrationDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.name,
            style: TextStyle(
              color: Color(0xff666666),
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
          SwitchToggle(false),
        ],
      ),
    );
  }
}
