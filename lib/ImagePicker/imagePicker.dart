import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/ImagePicker/imageController.dart';


class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {

  final ImageController controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
        centerTitle: true,
      ),
      body:  Obx((){
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty ?
                    FileImage(File(controller.imagePath.toString())) :
                    null
                ,
              ),

              TextButton(onPressed: (){
                controller.getImage();
              }, child: Text("Pick Image"),)

            ],
          ),
        );
      })
    );
  }
}
