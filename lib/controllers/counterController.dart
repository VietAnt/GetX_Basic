import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  //--PT Tang Gia Tri--//
  void increment() {
    counter++;
  }
}
