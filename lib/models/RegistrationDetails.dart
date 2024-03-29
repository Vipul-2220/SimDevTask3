import 'package:flutter/material.dart';
import 'package:simdev_task3/SwitchToggle.dart';
import 'package:simdev_task3/models/Registration.dart';
import 'package:simdev_task3/models/RegistrationDetailsView.dart';

class RegistrationDetails extends StatefulWidget {

  const RegistrationDetails({Key? key}) : super(key: key);

  @override
  _RegistrationDetailsState createState() => _RegistrationDetailsState();
}

class _RegistrationDetailsState extends State<RegistrationDetails> {

  final List<Registration> _details = [
    Registration('Name'),
    Registration('Email'),
    Registration('Contact no'),
    Registration('Age'),
    Registration('Date of birth'),
    Registration('Profession'),
    Registration('Address'),
    Registration('City'),
    Registration('State'),
    Registration('Country'),
    Registration('Pincode'),
    Registration('Job title/ role in company'),
    Registration('Company Name'),
    Registration('File/image upload'),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
    itemCount: _details.length,
    itemBuilder: (context, index){
      return RegistrationDetailsView(_details[index].title);
    }
    );
  }
}
