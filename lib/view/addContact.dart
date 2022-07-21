import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/appDataController.dart';
import 'package:state_management_getx/model/cantact_model.dart';
import 'package:state_management_getx/widgets/Mybutton.dart';

import '../widgets/textfield.dart';
class AddContact extends StatelessWidget {
   AddContact({Key? key}) : super(key: key);
  TextEditingController namecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();

  AppData appData= Get.find<AppData>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(children: [
            MyTextField(label: "Name",controller:namecontroller ,),
            SizedBox(height: 15,),
            MyTextField(label: "Phone",controller:phonecontroller ,),
               SizedBox(height: 15,),
            MyTextField(label: "email",controller:emailcontroller ,),
             SizedBox(height: 15,),
            Container(
              width: 200,
              height: 40,
              child: MyButton(onPressed: (){
                CantactModel cantactModel=CantactModel(
                  name: namecontroller.text, 
                  number: phonecontroller.text, 
                  email: emailcontroller.text);
                  appData.AddContact(cantactModel);
              }, child: Text("Add ")))
          ]),
        ),
      ),
    );
  }
}

