import 'package:flutter/material.dart';
import 'package:flutter_web_application/Widgets/air_quality_index_card.dart';
import 'package:flutter_web_application/Widgets/main_weather_box.dart';
import 'package:flutter_web_application/Widgets/monthly_rain_fall_card.dart';
import 'package:flutter_web_application/Widgets/sub_weather_box.dart';
import 'package:flutter_web_application/Widgets/sun_rise_n_set_card.dart';
import 'package:flutter_web_application/Widgets/top_weather_card.dart';
import 'package:flutter_web_application/Widgets/week_days_box.dart';

class DashboardSmallScreenView extends StatelessWidget {
  const DashboardSmallScreenView({Key? key}) : super(key: key);

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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: MainWeatherBox(),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
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
            const Padding(
              padding: EdgeInsets.all(15.0),
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: WeekDaysBox(),
            ),
            Container(
                height: 210,
                padding: const EdgeInsets.all(15),
                child: const AirQualityIndexCard()),
            Container(
                height: 210,
                padding: const EdgeInsets.all(15),
                child: const MonthyRainFallCard()),
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
