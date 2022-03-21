import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/animated_box_scale.dart';

class SubWeatherBox extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final String text1;
  final String text2;
  final String kmPerHour;
  final String percent;
  final String city;
  final String degree;
  const SubWeatherBox({
    Key? key,
    required this.firstColor,
    required this.secondColor,
    required this.text1,
    required this.text2,
    required this.kmPerHour,
    required this.percent,
    required this.city,
    required this.degree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBoxSclae(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [firstColor, secondColor])),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Text(
                      text1,
                      style: TextStyleConsts.whiteText,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          const Text(
                            "|",
                            style: TextStyleConsts.whiteText,
                          ),
                          WidgetConstants.width10,
                          Text(
                            "$kmPerHour Km/H",
                            style: TextStyleConsts.whiteText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Text(
                      text2,
                      style: TextStyleConsts.whiteText,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          const Text(
                            "|",
                            style: TextStyleConsts.whiteText,
                          ),
                          WidgetConstants.width10,
                          Text(
                            "$percent %",
                            style: TextStyleConsts.whiteText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    city,
                    style: TextStyleConsts.whiteText,
                  ),
                  Text(
                    "$degree°",
                    style: TextStyleConsts.whiteText30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
