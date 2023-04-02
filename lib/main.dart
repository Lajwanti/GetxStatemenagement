import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/Favourite%20Example/FavouriteExample.dart';
import 'package:getx_statemanagement/ImagePicker/imagePicker.dart';
import 'package:getx_statemanagement/LoginWithGetx/loginScreen.dart';
import 'package:getx_statemanagement/SliderExample/Silder.dart';
import 'package:getx_statemanagement/SwitchExample/SwitchExample.dart';
import 'package:getx_statemanagement/counter%20example/counter_example.dart';
import 'package:getx_statemanagement/home_screen.dart';
import 'package:getx_statemanagement/homscreenLanguage.dart';
import 'package:getx_statemanagement/language.dart';
import 'package:getx_statemanagement/screen_one.dart';
import 'package:getx_statemanagement/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     translations: Languages(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale('en', 'US'),
      home: const LoginScreen(),

      //Getx Route

      // getPages: [
      //   GetPage(name: "/", page: ()=>HomeScreen()),
      //   GetPage(name: "/screenOne", page: ()=>ScreenOne()),
      //   GetPage(name: "/screenTwo", page: ()=>ScreenTwo()),
      // ],
    );
  }
}