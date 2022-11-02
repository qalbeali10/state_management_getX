// ignore_for_file: file_names, avoid_print

import 'package:get/get.dart';

class CounterInreamentController extends GetxController {
  var counter = 0;
  var counter1 = 0.obs;

  increaseCounterValue(dynamic event) {
    // counter++;
    // print(counter);

    if (event == EventHandler.decrement) {
      counter1.value--;
    } else if (event == EventHandler.increament) {
      counter1.value++;
    } else if (event == EventHandler.reset) {
      counter1.value = 0;
    }
  }
}

enum EventHandler {
  increament,
  decrement,
  reset;
}
