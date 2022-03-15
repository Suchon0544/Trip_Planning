import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/images/88.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(25),
              child: Text(
                'Trip Planner',
                style: GoogleFonts.robotoMono(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
