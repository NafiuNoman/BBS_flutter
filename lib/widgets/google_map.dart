import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {

  // 23.78017129588447, 90.376001686818

  final CameraPosition position = CameraPosition(target: LatLng(23.78017129588447, 90.376001686818),zoom: 12);


  @override
  Widget build(BuildContext context) {
    return GoogleMap(initialCameraPosition: position);
  }
}
