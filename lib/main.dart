import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location_class/screen/view/home_screen.dart';
import 'package:location_class/screen/view/map_screen.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(p0) => MapScreen(),
      },
    )
  );

}
