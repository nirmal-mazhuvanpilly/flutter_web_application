import 'package:flutter/material.dart';

class DashboardCustomScreenView extends StatelessWidget {
  const DashboardCustomScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10)),
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
