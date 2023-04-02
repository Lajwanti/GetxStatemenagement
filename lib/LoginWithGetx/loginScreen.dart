import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/LoginWithGetx/loginController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Login with API's"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),

            SizedBox(height: 50,),

           Obx((){
             return  InkWell(
               onTap: (){
                 controller.loginApi();

               },
               child: controller.loading.value ? CircularProgressIndicator() : Container(
                   color: Colors.blue,
                   height: 50,
                   child: Center(child: Text("Login"))),
             );
           })

          ],
        ),
      ),
    );
  }
}
