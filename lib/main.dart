import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location_class/screen/view/home_screen.dart';
import 'package:location_class/screen/view/map_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (p0) => MapScreen(),
        },
      ),
    ),
  );
}
