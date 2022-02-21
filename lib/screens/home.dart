import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mana_getx/controllers/counterController.dart';
import 'package:mana_getx/screens/other.dart';

class HomeScreen extends StatelessWidget {
  //--bien tro toi ham--//
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Clicks: ${counterController.counter.value}")),
              const SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtherScreen());
                    },
                    child: const Text("Open Other Screen ")),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
