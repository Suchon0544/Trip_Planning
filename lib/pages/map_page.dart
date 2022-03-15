import 'package:flutter/material.dart';

// ignore: camel_case_types
class map_page extends StatelessWidget {
  const map_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Image.network(
          'https://vc2i.rweb-images.com/www.ost.co.th/images/catalog_images/1621314156.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
