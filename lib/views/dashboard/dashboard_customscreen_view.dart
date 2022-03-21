import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/air_quality_index_card.dart';
import 'package:flutter_web_application/Widgets/main_weather_box.dart';
import 'package:flutter_web_application/Widgets/monthly_rain_fall_card.dart';
import 'package:flutter_web_application/Widgets/sub_weather_box.dart';
import 'package:flutter_web_application/Widgets/sun_rise_n_set_card.dart';
import 'package:flutter_web_application/Widgets/top_weather_card.dart';
import 'package:flutter_web_application/Widgets/week_days_box.dart';

class DashboardCustomScreenView extends StatelessWidget {
  const DashboardCustomScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          controller: ScrollController(),
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TopWeatherCard(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 250,
                child: Row(
                  children: [
                    const Expanded(child: MainWeatherBox()),
                    WidgetConstants.width10,
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: SubWeatherBox(
                            firstColor: Color.fromARGB(255, 243, 114, 232),
                            secondColor: Color.fromARGB(255, 235, 79, 222),
                            text1: "Wind",
                            text2: "Hum",
                            kmPerHour: "15",
                            percent: "22",
                            city: "Tokyo",
                            degree: "32",
                          ),
                        ),
                        WidgetConstants.height10,
                        Expanded(
                          child: SubWeatherBox(
                            firstColor: Color.fromARGB(255, 245, 87, 87),
                            secondColor: Color.fromARGB(255, 212, 57, 57),
                            text1: "Wind",
                            text2: "Hum",
                            kmPerHour: "17",
                            percent: "24",
                            city: "New York",
                            degree: "30",
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: WeekDaysBox(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                      child:
                          SizedBox(height: 210, child: AirQualityIndexCard())),
                  WidgetConstants.width10,
                  Expanded(
                      child:
                          SizedBox(height: 210, child: MonthyRainFallCard())),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(15),
                height: 400,
                child: const SunRiseNSetCard())
          ],
        ),
      ),
    );
  }
}
