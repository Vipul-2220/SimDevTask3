import 'package:flutter/material.dart';
import 'package:simdev_task3/Screens/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.id,
    routes: {
      HomeScreen.id: (context)=> HomeScreen(),
    },

  ));
}
