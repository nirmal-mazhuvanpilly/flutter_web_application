import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/color_constants.dart';
import 'package:flutter_web_application/Utils/padding_constants.dart';
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
              padding: PaddingConsts.commonPadding15,
              child: TopWeatherCard(),
            ),
            const Padding(
              padding: PaddingConsts.commonPadding15,
              child: MainWeatherBox(),
            ),
            const Padding(
              padding: PaddingConsts.commonPadding15,
              child: SubWeatherBox(
                firstColor: ColorConsts.pinkColor,
                secondColor: ColorConsts.darkPinkColor,
                text1: "Wind",
                text2: "Hum",
                kmPerHour: "15",
                percent: "22",
                city: "Tokyo",
                degree: "32",
              ),
            ),
            const Padding(
              padding: PaddingConsts.commonPadding15,
              child: SubWeatherBox(
                firstColor: ColorConsts.orangeColor,
                secondColor: ColorConsts.darkOrangeColor,
                text1: "Wind",
                text2: "Hum",
                kmPerHour: "17",
                percent: "24",
                city: "New York",
                degree: "30",
              ),
            ),
            const Padding(
              padding: PaddingConsts.commonPadding15,
              child: WeekDaysBox(),
            ),
            Container(
                height: 210,
                padding: PaddingConsts.commonPadding15,
                child: const AirQualityIndexCard()),
            Container(
                height: 210,
                padding: PaddingConsts.commonPadding15,
                child: const MonthyRainFallCard()),
            Container(
                padding: PaddingConsts.commonPadding15,
                height: 400,
                child: const SunRiseNSetCard())
          ],
        ),
      ),
    );
  }
}
