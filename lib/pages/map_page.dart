import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: camel_case_types
class map_page extends StatelessWidget {
  const map_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(2000.00, 300.00)));
  }
}
