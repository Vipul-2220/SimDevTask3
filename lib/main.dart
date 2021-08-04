import 'package:flutter/material.dart';
import 'package:simdev_task3/Screens/FirstScreen.dart';
import 'package:simdev_task3/Screens/SecondScreen.dart';
// import 'package:simdev_task3/Screens/ThirdScreen.dart';
// import 'package:js/js.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: FirstScreen.id,
    routes: {
      FirstScreen.id: (context)=> FirstScreen(),
      SecondScreen.id: (context)=> SecondScreen(),
      // ThirdScreen.id: (context)=> ThirdScreen(),
    },

  ));
}
