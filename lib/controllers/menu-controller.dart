import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  var activeItem = overViewDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }

  onHover(String itemName){
    if(!isActive(itemName)){
      hoverItem.value = itemName;
    }
  }

  bool isActive(String itemName){
    return activeItem.value == itemName;
  }

  bool isHovering(String itemName){
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName){
    switch(itemName){
      case overViewDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case driversDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)){
      return Icon(icon, size: 22, color: dark,);
    }
    return Icon(icon,color: isHovering(itemName)? dark:lightGrey);
  }
  
}