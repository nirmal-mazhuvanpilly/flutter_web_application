import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/animated_box_scale.dart';

class MonthyRainFallCard extends StatelessWidget {
  const MonthyRainFallCard({
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
            children: [
              const Text("Monthly Rainfall",
                  style: TextStyleConsts.dartBlueBoldText),
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(250, 0, 162, 255),
                              Color.fromARGB(248, 61, 139, 255)
                            ]),
                        shape: BoxShape.circle),
                  ),
                  WidgetConstants.width5,
                  const Text("Rain", style: TextStyleConsts.dartBlueBoldText),
                  WidgetConstants.width10,
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(251, 255, 153, 0),
                              Color.fromARGB(248, 255, 177, 61)
                            ]),
                        shape: BoxShape.circle),
                  ),
                  WidgetConstants.width5,
                  const Text("Sun", style: TextStyleConsts.dartBlueBoldText)
                ],
              )
            ],
          ),
          Expanded(
              child: AnimatedBoxSclae(
                child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                RainFallChartLevel(empty: 2, sun: 6, rain: 2),
                RainFallChartLevel(empty: 0, sun: 7, rain: 3),
                RainFallChartLevel(empty: 5, sun: 3, rain: 2),
                RainFallChartLevel(empty: 1, sun: 8, rain: 1),
                RainFallChartLevel(empty: 3, sun: 1, rain: 6),
                RainFallChartLevel(empty: 2, sun: 2, rain: 6),
                RainFallChartLevel(empty: 0, sun: 3, rain: 7),
                RainFallChartLevel(empty: 5, sun: 2, rain: 3),
                RainFallChartLevel(empty: 1, sun: 1, rain: 8),
                RainFallChartLevel(empty: 3, sun: 6, rain: 1),
                            ],
                          ),
              ))
        ],
      ),
    );
  }
}

class RainFallChartLevel extends StatelessWidget {
  final int? empty;
  final int? rain;
  final int? sun;
  const RainFallChartLevel({Key? key, this.empty, this.rain, this.sun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Container(
            width: 8,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)),
          ),
          Column(
            children: [
              Expanded(flex: empty ?? 4, child: Container()),
              Expanded(
                flex: rain ?? 4,
                child: Container(
                  width: 8,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(250, 0, 162, 255),
                            Color.fromARGB(248, 61, 139, 255)
                          ]),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              WidgetConstants.height5,
              Expanded(
                flex: sun ?? 4,
                child: Container(
                  width: 8,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(251, 255, 153, 0),
                            Color.fromARGB(248, 255, 177, 61)
                          ]),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
