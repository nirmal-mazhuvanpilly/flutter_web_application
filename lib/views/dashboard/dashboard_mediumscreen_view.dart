import 'package:flutter/material.dart';
import 'package:flutter_web_application/Views/Dashboard/dashboard_large_medium_screen_view_body.dart';

class DashboardMediumScreenView extends StatelessWidget {
  const DashboardMediumScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DashboardLargeMediumScreenViewBody());
  }
}
