import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mana_getx/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Screen was clicked ${_counterController.counter.value} times"),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Open Other Screen"))
          ],
        ),
      ),
    );
  }
}
