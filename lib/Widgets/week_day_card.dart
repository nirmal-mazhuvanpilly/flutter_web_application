import 'package:flutter/material.dart';
import 'package:flutter_web_application/Utils/textstyle_constants.dart';

class WeekDayCard extends StatelessWidget {
  final String? day;
  final String? degree;
  WeekDayCard({Key? key, this.day, this.degree}) : super(key: key);

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
              scale: value ? 0.95 : 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: value ? Colors.black : Colors.white,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: value
                            ? const [
                                Color.fromARGB(255, 151, 202, 243),
                                Color.fromARGB(255, 91, 143, 231)
                              ]
                            : [Colors.white, Colors.white]),
                    boxShadow: value
                        ? [
                            BoxShadow(
                                color: Colors.blue.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10),
                          ]
                        : []),
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_queue,
                      size: 50,
                      color: value ? Colors.white : Colors.yellow.shade600,
                    ),
                    Text(
                      day ?? "",
                      style: value
                          ? TextStyleConsts.whiteBoldText
                          : TextStyleConsts.dartBlueBoldText,
                    ),
                    Text(
                      "$degree°",
                      style: value
                          ? TextStyleConsts.whiteBoldText
                          : TextStyleConsts.dartBlueBoldText,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
