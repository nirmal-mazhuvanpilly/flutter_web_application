import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/widget_constants.dart';
import 'package:flutter_web_application/Widgets/week_day_card.dart';

class WeekDaysBox extends StatelessWidget {
  const WeekDaysBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          WeekDayCard(
            day: "Sun",
            degree: "27",
          ),
          WidgetConstants.width10,
          WeekDayCard(
            day: "Mon",
            degree: "28",
          ),
          WidgetConstants.width10,
          WeekDayCard(
            day: "Tue",
            degree: "30",
          ),
          WidgetConstants.width10,
          WeekDayCard(
            day: "Wed",
            degree: "24",
          ),
          WidgetConstants.width10,
          WeekDayCard(
            day: "Thu",
            degree: "26",
          ),
          WidgetConstants.width10,
          WeekDayCard(
            day: "Fri",
            degree: "26",
          ),
          WidgetConstants.width10,
          WeekDayCard(
            day: "Sat",
            degree: "31",
          ),
        ],
      ),
    );
  }
}
