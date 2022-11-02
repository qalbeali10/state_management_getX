// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/counter_incrementController.dart';
import 'package:state_management_getx/view/secondPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  CounterInreamentController counterInreamentController =
      Get.put(CounterInreamentController());
  @override
  Widget build(BuildContext context) {
    print('render stateless widget');
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('GetX State Management'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
              // flex: 1,
              child: Obx(
                () => Center(
                  child: Text(
                    'Counter Value=${counterInreamentController.counter1.value}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counterInreamentController
                        .increaseCounterValue(EventHandler.increament);
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    counterInreamentController
                        .increaseCounterValue(EventHandler.decrement);
                  },
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    counterInreamentController
                        .increaseCounterValue(EventHandler.reset);
                  },
                  child: Icon(Icons.exposure_zero),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}


//   child: GetBuilder<CounterInreamentController>(
              //   builder: (controller) {
              //     return Text(
              //       'Counter Value=${controller.counter}',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     );
              //   },
              // ),
              // child: GetX<CounterInreamentController>(builder: (controller) {
              //   return Text(
              //     'Counter Value=${controller.seconCounter}',
              //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //   );
              // }),