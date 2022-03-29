import 'package:flutter/material.dart';

// ignore: camel_case_types
class trip_page extends StatelessWidget {
  const trip_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
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
            ),
          );
        },
      ),
    );
  }
}
