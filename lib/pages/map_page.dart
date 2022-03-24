import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

// ignore: camel_case_types
class map_page extends StatelessWidget {
  const map_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(),
    );
  }
}
