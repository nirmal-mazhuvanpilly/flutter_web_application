import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/border_constants.dart';
import 'package:flutter_web_application/Utils/color_constants.dart';
import 'package:flutter_web_application/Utils/padding_constants.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';

class AirQualityIndexCard extends StatelessWidget {
  const AirQualityIndexCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingConsts.commonPadding20,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderConsts.circularBorder10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Air Quality Index",
                  style: TextStyleConsts.dartBlueBoldText),
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: ColorConsts.greenColor,
                  ),
                  Text(
                    "Uttara, Dhaka",
                    style: TextStyleConsts.dartBlueBoldText,
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                ],
              ),
            ],
          ),
          WidgetConstants.height10,
          Row(
            children: [
              const Icon(Icons.nature_people_outlined,
                  size: 35, color: ColorConsts.greenColor),
              WidgetConstants.width10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Good", style: TextStyleConsts.dartBlueBoldText),
                  Text("A perfect day for a walk!",
                      style: TextStyleConsts.dartBlueBoldText)
                ],
              )
            ],
          ),
          WidgetConstants.height10,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GasCard(
                  gas: "PM2",
                  qty: "9.3",
                ),
                WidgetConstants.width5,
                GasCard(
                  gas: "PM10",
                  qty: "12.2",
                ),
                WidgetConstants.width5,
                GasCard(
                  gas: "SO2",
                  qty: "4.8",
                ),
                WidgetConstants.width5,
                GasCard(
                  gas: "NO2",
                  qty: "4.6",
                ),
                WidgetConstants.width5,
                GasCard(
                  gas: "O3",
                  qty: "6.5",
                ),
                WidgetConstants.width5,
                GasCard(
                  gas: "CO",
                  qty: "0.9",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GasCard extends StatelessWidget {
  final String? gas;
  final String? qty;
  GasCard({Key? key, this.gas, this.qty}) : super(key: key);

  final ValueNotifier<bool> _onHover = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onHover: (event) {
          _onHover.value = true;
        },
        onExit: (event) {
          _onHover.value = false;
        },
        child: ValueListenableBuilder<bool>(
            valueListenable: _onHover,
            builder: (context, value, child) {
              return AnimatedScale(
                duration: const Duration(milliseconds: 200),
                scale: value ? 0.80 : 1.0,
                child: Container(
                  padding: PaddingConsts.commonPadding10,
                  decoration: BoxDecoration(
                      borderRadius: BorderConsts.circularBorder5,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: const [0.1, 1, 1],
                          colors: value
                              ? const [
                                  ColorConsts.darkGreenColor,
                                  ColorConsts.greenColor,
                                  ColorConsts.darkGreenColor,
                                ]
                              : const [
                                  Color.fromARGB(255, 240, 240, 240),
                                  Colors.white,
                                  Color.fromARGB(255, 238, 238, 238),
                                ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                          child: Text(qty ?? "",
                              style: value
                                  ? TextStyleConsts.whiteBoldText20
                                  : TextStyleConsts.greenText20)),
                      FittedBox(
                        child: Text(
                          gas ?? "",
                          style: value
                              ? TextStyleConsts.whiteBoldText
                              : TextStyleConsts.greenText,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
