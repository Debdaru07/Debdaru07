import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../common_functions_and_constants/common_functions.dart';



class TrackingLocation extends StatefulWidget {
  const TrackingLocation({super.key});

  @override
  State<TrackingLocation> createState() => _TrackingLocationState();
}

class _TrackingLocationState extends State<TrackingLocation> {
  GoogleMapController? _mapController;
  LatLng _initialCameraPosition = const LatLng(28.424670, 77.035960); // Default location

 void _getCurrentLocation() async {
   PermissionStatus permissionStatus = await Permission.locationWhenInUse.request();

  if (permissionStatus.isGranted) {
    // Permission granted, retrieve current location
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      _initialCameraPosition = LatLng(position.latitude, position.longitude);
    });

    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: _initialCameraPosition,
          zoom: 12,
        ),
      ),
    );
  } else {
    showErrorBar(context,errorMessage: "Location Access Permission not granted !" );
  }
}

@override
void initState() {  
  super.initState();
  log("Init State !");
  _getCurrentLocation();
  // Future.delayed(Duration.zero,() async {
  // });
}

@override
Widget build(BuildContext context) {

  return 
  // Scaffold(body: Center(child: Text("Tracking Page !")),);
  
  GoogleMap(
    onMapCreated: (controller) {
      _mapController = controller;
    },
    initialCameraPosition: CameraPosition(
      target: _initialCameraPosition,
      zoom: 12,
    ),
  );
}
}