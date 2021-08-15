import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/pages/authentication.dart';
import 'package:flutter_app/routing/routes.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:flutter_app/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              if(ResponsiveWidget.isSmallScreen(context))
                Row(
                  children: [
                    SizedBox(width: _width/48,),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "My Admin Panel",
                        color: active,
                        size: 20,
                        weight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: _width/48,),
                  ],
                ),
              if(ResponsiveWidget.isSmallScreen(context))
                SizedBox(width: 40,),
              if(ResponsiveWidget.isSmallScreen(context))
                Divider(color: lightGrey.withOpacity(0.1),),

              Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItems.map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: (){
                        if(item.route == authenticationPageRoute){
                          menuController.changeActiveItemTo(overViewDisplayName);
                          Get.offAllNamed(authenticationPageRoute);
                        }
                        if(!menuController.isActive(item.name)){
                          navigationController.navigateTo(item.name);
                          menuController.changeActiveItemTo(item.name);
                          if(ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                            navigationController.navigateTo(item.route);
                          
                        }
                      }
                  )).toList()
              )
            ],
          )
        ],
      ),

    );
  }
}
