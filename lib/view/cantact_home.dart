import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/appDataController.dart';
import 'package:state_management_getx/model/cantact_model.dart';

import 'addContact.dart';
class CantactHome extends StatelessWidget {
   CantactHome({Key? key}) : super(key: key);

  AppData appData=Get.put(AppData(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
       Obx(() =>  Expanded(child: ListView.builder(
          itemCount: appData.cantacts.value.length,
          itemBuilder: (context, index) {
            CantactModel model=appData.cantacts.value[index];
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),
            ),
            title:Text(model.name),
            subtitle: Text(model.number),
          );

        },)),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(onPressed: (){
            Get.to(()=>AddContact());
          }, child: Text('Add Contact'))),
      ]),
    );
  }
}