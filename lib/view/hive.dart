import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveex/model/studentmodel.dart';

class HiveExample extends StatefulWidget {
  const HiveExample({super.key});

  @override
  State<HiveExample> createState() => _HiveExampleState();
}

class _HiveExampleState extends State<HiveExample> {
  var box = Hive.box<StudentModel>('abc');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await box.clear();
        setState(() {});
      }),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(box.values.toString() ?? "no data"),
          ],
        ),
      ),
    );
  }
}
