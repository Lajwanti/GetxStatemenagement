
import 'package:get/get.dart';

class SlideController extends GetxController{

  RxDouble opacity = .3.obs;

  setOpacity(double newValue){
    opacity.value = newValue;
  }


}