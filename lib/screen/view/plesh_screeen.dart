import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SScreen extends StatefulWidget {
  const SScreen({Key? key}) : super(key: key);

  @override
  State<SScreen> createState() => _SScreenState();
}

class _SScreenState extends State<SScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Get.toNamed('/home');
            }, child: Text("Permission")),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              Get.toNamed('/map');
            }, child: Text("Map"))
          ],

        ),
      ),
    ),);
  }
}
