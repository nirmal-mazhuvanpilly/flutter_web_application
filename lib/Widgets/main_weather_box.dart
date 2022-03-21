import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/animated_box_scale.dart';

class MainWeatherBox extends StatelessWidget {
  const MainWeatherBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBoxSclae(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 151, 202, 243),
                  Color.fromARGB(255, 91, 143, 231)
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Kolkota", style: TextStyleConsts.whiteText),
            WidgetConstants.height10,
            const Text("Today,March 20", style: TextStyleConsts.whiteText),
            WidgetConstants.height10,
            const Text("30°", style: TextStyleConsts.whiteText60),
            WidgetConstants.height10,
            const Text("Sunny", style: TextStyleConsts.whiteText),
            WidgetConstants.height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Wind", style: TextStyleConsts.whiteText),
                WidgetConstants.width10,
                Text("|", style: TextStyleConsts.whiteText),
                WidgetConstants.width10,
                Text("19 Km/H", style: TextStyleConsts.whiteText),
              ],
            ),
            WidgetConstants.height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Hum", style: TextStyleConsts.whiteText),
                WidgetConstants.width10,
                Text("|", style: TextStyleConsts.whiteText),
                WidgetConstants.width10,
                Text("22 %", style: TextStyleConsts.whiteText),
              ],
            )
          ],
        ),
      ),
    );
  }
}
