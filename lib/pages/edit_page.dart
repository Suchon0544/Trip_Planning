import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class edit_page extends StatelessWidget {
  const edit_page({Key? key}) : super(key: key);

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trip Planner',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: ClipRRect(
                              child: Image.network(
                                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                                height: 200,
                              ),
                            ),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                            trailing: Icon(
                              Icons.arrow_right,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Highlight',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: ClipRRect(
                              child: Image.network(
                                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                                height: 200,
                              ),
                            ),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                            trailing: Icon(
                              Icons.arrow_right,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
