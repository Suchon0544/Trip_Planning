import 'dart:math';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class home_page extends StatefulWidget {
  static const routeName = '/';

  const home_page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _home_pageState();
  }
}

// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  // จำลองข้อมูล สร้างลิสรายการ 100 รายการ
  List<String> items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  void initState() {
    print("initState"); // สำหรับทดสอบ
    super.initState();
  }

  void _refreshData() {
    setState(() {
      print("setState"); // สำหรับทดสอบ
      Random rng = Random(); // ข้อมูล Random
      // ignore: non_constant_identifier_names
      int rd_number = rng.nextInt(20); // สุ่มค่าจาก 0 - 20
      print(rd_number); // สำหรับทดสอบ
      // สร้างลิสรายการใหม่
      items = List<String>.generate(rd_number, (i) => 'Item ${i + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build"); // สำหรับทดสอบ
    return Scaffold(
      body: Column(
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
          Container(
            // สร้างส่วน header ของลิสรายการ
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.teal.withAlpha(100),
              //    borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Text('Total ${items.length} items'),
              ],
            ),
          ),
          Expanded(
            child: items.length > 0 // กำหนดเงื่อนไขตรงนี้
                ? ListView.separated(
                    // กรณีมีรายการ แสดงปกติ
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ClipRRect(
                          child: Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                            height: 200,
                          ),
                        ),
                        title: Text('${items[index]}'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                        trailing: Icon(
                          Icons.arrow_right,
                          size: 30,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  )
                : const Center(child: Text('No items')), // กรณีไม่มีรายการ
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // ปุ่มสำหรับดึงข้อมูลใหม่
        onPressed: _refreshData,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
