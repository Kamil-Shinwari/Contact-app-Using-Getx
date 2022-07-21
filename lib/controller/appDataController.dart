import 'package:get/get.dart';
import 'package:state_management_getx/model/cantact_model.dart';
class AppData extends GetxController{
  var cantacts=[].obs;
  void AddContact(CantactModel model){
    cantacts.add(model);
    Get.back();

  }
}