import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screen_two.dart';

class ScreenOne extends StatefulWidget {

  var name;
   ScreenOne({Key? key,this.name}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        automaticallyImplyLeading: false,
        title: Text("Screen One" + Get.arguments[0]),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //Navigation go to next screen

          Card(child: TextButton(onPressed: (){
            //go to back
            //Flutter method
            Navigator.pop(context);
            //getx method
            //Get.back();

            Get.to(()=>const ScreenTwo());

          }, child: const  Center(child: Text("Go to screen two"))))
        ],
      ),

    );
  }
}
