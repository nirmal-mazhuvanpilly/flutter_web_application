import 'package:flutter/material.dart';
import 'package:flutter_web_application/Helpers/responsive_ui.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_customscreen_view.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_largescreen_view.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_mediumscreen_view.dart';
import 'package:flutter_web_application/views/dashboard/dashboard_smallscreen_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      largeScreen: DashboardLargeScreenView(),
      mediumScreen: DashboardMediumScreenView(),
      smallScreen: DashboardSmallScreenView(),
      customScreen: DashboardCustomScreenView(),
    );
  }
}
