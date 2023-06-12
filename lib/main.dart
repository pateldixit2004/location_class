import 'package:flutter/material.dart';
import 'package:location_class/screen/view/home_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>HomeScreen(),
      },
    )
  );

}
