import 'package:flutter/material.dart';

import 'day3/aleena.dart';
import 'day3/alert.dart';
import 'day3/alert_task.dart';
import 'day3/flutter_toast.dart';
import 'day3/pop_menu.dart';
import 'project-flip/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(),
    );
  }
}
