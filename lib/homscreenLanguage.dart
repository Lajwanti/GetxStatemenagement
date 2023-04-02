import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenLanguage extends StatefulWidget {
  const HomeScreenLanguage({Key? key}) : super(key: key);

  @override
  _HomeScreenLanguageState createState() => _HomeScreenLanguageState();
}

class _HomeScreenLanguageState extends State<HomeScreenLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Translator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),

          ),

          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text("English")),

              SizedBox(width: 50,),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'PK'));
              }, child: Text("Urdu")),
            ],
          )
        ],
      ),
    );
  }
}
