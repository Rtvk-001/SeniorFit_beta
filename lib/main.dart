import 'package:flutter/material.dart';
import 'package:flutter1/responsive/Mobile_Screen_Layout.dart';
import 'package:flutter1/responsive/Web_Screen_Layout.dart';
import 'package:flutter1/responsive/responsive_layout_screen.dart';
import 'package:flutter1/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta Clone',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(mobileScreenLayout:MobileScreenLayout() , webScreenLayout:WebScreenLayout() ,),
    );
  }
}
