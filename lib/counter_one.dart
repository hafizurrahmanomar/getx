import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';
import 'counter_two.dart';

class CounterOne extends StatefulWidget {
  const CounterOne({super.key});

  @override
  State<CounterOne> createState() => _CounterOneState();
}

class _CounterOneState extends State<CounterOne> {

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
                return Text('${ctl.counter}',  style: const TextStyle(
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
                }, child: Icon(Icons.add),),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: () {
                  controller.decrement();
                },child:  Icon(Icons.remove),),
              ],
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CounterTwo()),
              );
            }, child: Text("Go to Counter Two"),)

          ],
        ),
      ),
    );
  }
}