import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterTwo extends StatefulWidget {
   const CounterTwo({super.key});

  @override
  State<CounterTwo> createState() => _CounterTwoState();
}

class _CounterTwoState extends State<CounterTwo> {
  final CounterController controller = Get.find<CounterController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter One'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder(
              init:controller,
              builder: (ctl) {
                return Text(ctl.counter.toString(),  style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),);
              }
            ),
            const SizedBox(height: 120,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  controller.increment();
                }, child: Text("+"),),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: () {
                 controller.decrement();
                }, child: Text("-"),),
              ],
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Go to Counter one"),)

          ],
        ),
      ),
    );
  }
}