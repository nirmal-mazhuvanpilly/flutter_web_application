import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/color_constants.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';

class TopWeatherCard extends StatelessWidget {
  const TopWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "07:32 AM",
          style: TextStyleConsts.blueText60,
        ),
        const Text(
          "Wednesday, 14 April, 2021",
          style: TextStyleConsts.darkBlueText30,
        ),
        Row(
          children: const [
            Icon(
              Icons.light_mode_outlined,
              color: ColorConsts.blueColor,
              size: 40,
            ),
            Text(
              "Good morning, Nirmal",
              style: TextStyleConsts.blueText30,
            ),
          ],
        ),
      ],
    );
  }
}
