import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';

// ignore: camel_case_types
class map_page extends StatelessWidget {
  const map_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(14.70802, 101.41614),
        minZoom: 10.0,
        /*plugins: [
          MarkerClusterPlugin(
            
          ),
        ],*/
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c'],
        ),
        MarkerLayerOptions(
          markers: [
            new Marker(
              point: LatLng(14.70802, 101.41614),
              builder: (context) => new Container(
                child: IconButton(
                  onPressed: () {
                    print('object');
                  },
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 45.0,
                  ),
                ),
              ),
              width: 45.0,
              height: 45.0,
            ),
          ],
        ),
        PolygonLayerOptions(polygons: [
          PolygonOptions(
              borderColor: Colors.blueAccent,
              color: Colors.black12,
              borderStrokeWidth: 3)
        ])
      ],
    );
  }
}
