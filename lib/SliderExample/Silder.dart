import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/SliderExample/SlideController.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
final SlideController controller = Get.put(SlideController());

//double opacity = .4;


  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx((){
            return   Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            );
          }),
          Obx((){
            return    Slider(value: controller.opacity.value, onChanged: (value){

              controller.setOpacity(value);
             // controller.opacity.value = value;
              print(value);

            });
          }),



        ],
      ),
    );
  }
}
