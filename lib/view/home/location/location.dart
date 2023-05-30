import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/home/location/tracking.dart';

class LocationCurrent extends StatefulWidget {
  const LocationCurrent({super.key});

  @override
  State<LocationCurrent> createState() => _LocationCurrentState();
}

class _LocationCurrentState extends State<LocationCurrent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Row(
          children:   [
            Text("Location ",style: TextStyle(fontSize: 21,fontFamily: "Rebot",fontWeight: FontWeight.w500),),
          ],
        ),
        leading: const Icon(Icons.location_searching_sharp),
      ),
      body: Center(child: ElevatedButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) =>const TrackingLocation() ,));
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child:  const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              Icon(Icons.track_changes),
              Text('Track Location till Home'),
              Icon(Icons.home),
            ],
          ),
        ),
        )),
      );
  }
}