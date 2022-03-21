import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/animated_box_scale.dart';

class SunRiseNSetCard extends StatelessWidget {
  const SunRiseNSetCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Sunrise & Sunset",
                style: TextStyleConsts.dartBlueBoldText,
              ),
              Icon(Icons.add_circle_outline, color: Colors.grey),
            ],
          ),
          WidgetConstants.height10,
          Expanded(
              child: AnimatedBoxSclae(
            child: const SubCard(
                city: "Dhaka", sunRise: "4:40 AM", sunSet: "6:53 PM"),
          )),
          WidgetConstants.height10,
          Expanded(
              child: AnimatedBoxSclae(
            child: const SubCard(
                city: "Tokyo", sunRise: "4:47 AM", sunSet: "6:49 PM"),
          )),
        ],
      ),
    );
  }
}

class SubCard extends StatelessWidget {
  final String? city;
  final String? sunRise;
  final String? sunSet;
  const SubCard({Key? key, this.city, this.sunRise, this.sunSet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 248, 240, 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.fmd_good_outlined,
                      color: Color.fromRGBO(128, 168, 246, 1)),
                  Text(city ?? "", style: TextStyleConsts.dartBlueBoldText),
                ],
              ),
              const Icon(Icons.keyboard_control_rounded,
                  color: Color.fromRGBO(251, 188, 98, 1)),
            ],
          ),
          WidgetConstants.height10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.light_mode_outlined,
                    size: 50,
                    color: Color.fromRGBO(251, 188, 98, 1),
                  ),
                  WidgetConstants.width10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sunrise",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(sunRise ?? "",
                          style: TextStyleConsts.dartBlueBoldText20)
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.nights_stay_outlined,
                    size: 50,
                    color: Color.fromRGBO(128, 168, 246, 1),
                  ),
                  WidgetConstants.width10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sunset",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(sunSet ?? "",
                          style: TextStyleConsts.dartBlueBoldText20)
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
