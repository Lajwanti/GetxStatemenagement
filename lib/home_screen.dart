import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height*1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text("Getx Tutorial"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //In second video learn Dialog box alert

          Card(
            child: ListTile(
              title: const Text("Getx Dialog Alert"),
              subtitle: const Text("Dialog Alert box using getx"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete chat",
                    titlePadding: EdgeInsets.only(top: 20),
                    middleText: "Are you sure you want to delete this chat?",
                    contentPadding: EdgeInsets.all(20),
                    //1 way to confirm and cancel
                    textConfirm: "Yes",
                    textCancel: "No",

//more than three lines content and use bunch of children
// content: Column(
//   children: [
//     Text("Confirm"),
//     Text("Confirm"),
//     Text("Confirm"),
//     Text("Confirm"),
//     Text("Confirm"),
//     Text("Confirm")
//   ],
// ),

//2 way to confirm and cancel
                    confirm: TextButton(
                        onPressed: () {
                    //Navigator.pop(context);
                          Get.back();
                        },
                        child: Text("Confirm")),
                    cancel: TextButton(
                      onPressed: () {},
                      child: Text("Cancel"),
                    ));
              },
            ),
          ),

          //In second video Bottom sheet with light and dark mode using getx

          Card(
            child: ListTile(
              title: const Text("Getx Bottom Sheet"),
              subtitle: const Text("Bottom Sheet using getx"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Light Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Dark Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
          
          //Navigation go to next screen
          
          Card(child: TextButton(onPressed: (){
            //getx method navigation
           // Get.to(()=>ScreenOne(name: "Lajwanti",));

            Get.toNamed("/screenOne", arguments: [
              "Lahwanti",
              "Lohana"
            ]);
            //Flutter method navigation
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenOne()));


          }, child: const Text("Go to next screen"))),

          //Height and width using getx
          Container(
            //MediaQuery
            //height: MediaQuery.of(context).size.height*.1,

            //Heigth use mediaquery
            height: height * .2,
            //width use getx
            width: Get.width * .35,

            color: Colors.blueGrey,
            child: Center(
              child: Text("Center"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        onPressed: () {
          //In first video learn snack bar using getx

          Get.snackbar("Lajwanti", "Flutter Developer",
              backgroundColor: Colors.blue,
              instantInit: true,
              icon: const Icon(Icons.add),
              snackPosition: SnackPosition.BOTTOM,
              shouldIconPulse: true,
              showProgressIndicator: true,
              snackStyle: SnackStyle.FLOATING,
              onTap: (snackbar) {});
        },
      ),
    );
  }
}
