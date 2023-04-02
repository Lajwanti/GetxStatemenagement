
import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool  notifications= false.obs;

  setNotification(bool newValue){
    notifications.value = newValue;

  }
}