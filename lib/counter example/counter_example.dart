import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/counter%20example/counter_controller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  _CounterExampleState createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  final CounterController controller = Get.put(CounterController());

  int x = 0 ;

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Obx((){
          print("rebuild");
          return Text(controller.counter.toString(),style: TextStyle(fontSize: 50),);
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();

                  },
      ),
    );
  }
}
