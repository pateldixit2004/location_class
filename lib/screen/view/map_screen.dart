import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_class/controller.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LocationController locationController = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            locationController.getlat();
          },
          child: Icon(Icons.my_location_rounded,),
        ),
        appBar: AppBar(
          title: Text('map'),
        ),
        body: Obx(
          () => GoogleMap(
            zoomControlsEnabled: false,
            onMapCreated: (controller) {
              locationController.googleMapController = controller;
            },
            initialCameraPosition: CameraPosition(
                target: LatLng(locationController.lat.value,
                    locationController.long.value),
                zoom: 5),
            markers: {
              Marker(
                  markerId: MarkerId('id 1'),
                  position: LatLng(locationController.lat.value,
                      locationController.long.value),
                  draggable: false,
                  infoWindow: InfoWindow(title: 'Dixit'))
            },
            mapType: MapType.satellite,
          ),
        ),
      ),
    );
  }
}
