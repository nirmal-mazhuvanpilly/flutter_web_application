import 'package:flutter/material.dart';
import 'package:flutter_web_application/Helpers/responsive_ui.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_largescreen_view.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_mediumscreen_view.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_smallscreen_view.dart';
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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DashboardView());
  }
}
