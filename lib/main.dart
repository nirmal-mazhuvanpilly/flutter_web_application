import 'package:flutter/material.dart';
import 'package:flutter_web_application/Helpers/custom_scroll_behaviour.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Web Application',
        scrollBehavior:
            MyCustomScrollBehavior(), //Custom Scrollbehaviour for web
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DashboardView());
  }
}
