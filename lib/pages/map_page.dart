import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

// ignore: camel_case_types
class map_page extends StatefulWidget {
  const map_page({Key? key}) : super(key: key);

  @override
  _map_pageState createState() => _map_pageState();
}

// ignore: camel_case_types
class _map_pageState extends State<map_page> {
  late List<LatLng> points;
  late MapController mapController;
  late List<Marker> markers;

  @override

  // ignore: must_call_super
  void initState() {
    super.initState();

    mapController = new MapController();
    var points = List<LatLng>.empty();
    points.add(
      new LatLng(14.70802, 101.41614),
    );
    points.add(
      new LatLng(14.70900, 101.41614),
    );
    points.add(
      new LatLng(14.70950, 101.41614),
    );
  }

  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        center: LatLng(14.70802, 101.41614),
        minZoom: 10.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
      ],
    );
  }
}
