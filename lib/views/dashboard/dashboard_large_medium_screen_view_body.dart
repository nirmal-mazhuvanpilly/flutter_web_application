import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/air_quality_index_card.dart';
import 'package:flutter_web_application/Widgets/main_weather_box.dart';
import 'package:flutter_web_application/Widgets/monthly_rain_fall_card.dart';
import 'package:flutter_web_application/Widgets/sub_weather_box.dart';
import 'package:flutter_web_application/Widgets/sun_rise_n_set_card.dart';
import 'package:flutter_web_application/Widgets/top_weather_card.dart';
import 'package:flutter_web_application/Widgets/week_days_box.dart';

class DashboardLargeMediumScreenViewBody extends StatelessWidget {
  const DashboardLargeMediumScreenViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.all(25),
            child: ListView(
              controller: ScrollController(),
              children: [
                const TopWeatherCard(),
                WidgetConstants.height10,
                const WeekDaysBox(),
                SizedBox(
                  height: 400,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Expanded(child: AirQualityIndexCard()),
                            WidgetConstants.height10,
                            Expanded(child: MonthyRainFallCard()),
                          ],
                        ),
                      ),
                      WidgetConstants.width10,
                      const Expanded(
                        child: SunRiseNSetCard(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ListView(
            children: const [
              SizedBox(
                  height: 400,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: MainWeatherBox(),
                  )),
              SizedBox(
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 10),
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
                  )),
              SizedBox(
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 10),
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
                  )),
            ],
          ),
        ),
      ],
    );
  }
}


