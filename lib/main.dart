import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_signup_getx/Homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: const HomeScreen(),
    );
  }
}
