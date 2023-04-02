import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/Favourite%20Example/FavouriteController.dart';


class FavouriteExample extends StatefulWidget {
  const FavouriteExample({Key? key}) : super(key: key);

  @override
  _FavouriteExampleState createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {
//Simple flutter
 // List<String> fruitsName = ["Apple","Banana","Orange","Mangoes"];
 // List<String> tempFruitList = [];

  //Getx
  final FavouriteController controller = Get.put(FavouriteController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Item Example"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder:(context, index) {
            return Card(
              child: ListTile(
                onTap: (){

                  if( controller.updatefruitList.contains(controller.fruitList[index].toString())){
                    //controller.updatefruitList.remove(controller.fruitList[index].toString());
                   // updatefruitList.remove(.fruitList[index].toString());

                    controller.removeFromFruitItem(controller.fruitList[index].toString());
                  }else{
                   //controller.updatefruitList.add(controller.fruitList[index].toString());
                   //updatefruitList.add(fruitList[index].toString());
                    controller.addToFruitItem(controller.fruitList[index].toString());

                  }
                  // setState(() {
                  //
                  // });
                },
                title: Text(controller.fruitList[index].toString()),
                trailing: Obx((){
                  return Icon(Icons.favorite,
                      color: controller.updatefruitList.contains(controller.fruitList[index].toString()) ? Colors.red : Colors.grey);

                })

              ),
            );

      }
      ),
    );
  }
}
