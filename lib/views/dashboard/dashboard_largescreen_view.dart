import 'package:flutter/material.dart';

class DashboardLargeScreenView extends StatelessWidget {
  const DashboardLargeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Column(
                children: [
                  Expanded(
                      flex: 6,
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        color: Colors.purple,
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        color: Colors.blue,
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        color: Colors.indigo,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
