import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(23.78017129588447, 90.376001686818);

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  Map<String, Marker> _markers = {};

  late GoogleMapController mapController;

  final CameraPosition position =
  CameraPosition(target: currentLocation, zoom: 12);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: position,
      onMapCreated: (controller) {
        mapController = controller;
        addMarkers('first', currentLocation);
      },
      markers: _markers.values.toSet(),
    );
  }

  void addMarkers(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: const InfoWindow(
            title: "BBS Headquarter",
            snippet: 'Bangladesh Bureau of Statistics'));

    var marker2 = const Marker(markerId: MarkerId('value'),
        position: LatLng(23.79937998496827, 90.29624912404782,),
        infoWindow: InfoWindow(title: 'Museum', snippet: 'old archive'));

    var marker3 = const Marker(markerId: MarkerId('value2'),
        position: LatLng(23.778773133303044, 90.34156772655236,),
        infoWindow: InfoWindow(title: 'Resort', snippet: 'old archive'));

    _markers[id] = marker;
    _markers["value"] = marker2;
    _markers["value2"] = marker3;
  }
}
