
import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitList = ["Apple", "Banana", "Mangoes"].obs;

  RxList<dynamic> updatefruitList = [].obs;


  addToFruitItem(String value){

    updatefruitList.add(value);
  }

  removeFromFruitItem(String value){
    updatefruitList.remove(value);
  }








}