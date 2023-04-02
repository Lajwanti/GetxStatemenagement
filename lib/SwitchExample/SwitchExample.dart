import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/SwitchExample/SwitchController.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  @override

  final SwitchController controller = Get.put(SwitchController());
  //bool notification  = false;

  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notifications"),
              Obx(()=>
                  Switch(value:controller.notifications.value, onChanged: (value){
                    controller.setNotification(value);

                    // notification = value;
                    // setState(() {
                    //
                    // });


                  })
              ),

            ],
          )
        ],
      ),
    );
  }
}
