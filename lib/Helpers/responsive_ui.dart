import 'package:flutter/material.dart';
import 'package:flutter_web_application/Helpers/responsive_constants.dart';

class ResponsiveView extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? customScreen;

  const ResponsiveView({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
    this.customScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= ResponsiveConstants.largeScreenSize) {
          debugPrint("Large Screen");
          return largeScreen;
        } else if (constraints.maxWidth < ResponsiveConstants.largeScreenSize &&
            constraints.maxWidth >= ResponsiveConstants.mediumScreenSize &&
            constraints.maxWidth <= ResponsiveConstants.customScreenSize) {
          debugPrint("Custom Screen");
          return customScreen ?? largeScreen;
        } else if (constraints.maxWidth < ResponsiveConstants.largeScreenSize &&
            constraints.maxWidth >= ResponsiveConstants.mediumScreenSize) {
          debugPrint("Medium Screen");
          return mediumScreen ?? largeScreen;
        } else {
          debugPrint("Small Screen");
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
