import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveex/model/studentmodel.dart';
import 'package:hiveex/view/hive.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StudentModelAdapter());

  var box = await Hive.openBox<StudentModel>('abc');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HiveExample(),
    );
  }
}
