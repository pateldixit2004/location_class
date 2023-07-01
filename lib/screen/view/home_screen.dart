import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var status = await Permission.location.status;
                    if (status.isDenied) {
                      await Permission.location.request();
                    } else {
                      print('Get Permission');
                    }
                  },
                  child: Text('permission take ')),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  Map<Permission, PermissionStatus> statuses = await [
                    Permission.location,
                    Permission.storage,
                    Permission.camera,
                  ].request();
                },
                child: Text("MultiPermission"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
