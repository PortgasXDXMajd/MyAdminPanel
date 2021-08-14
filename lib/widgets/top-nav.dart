import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/widgets/CustomText.dart';

AppBar topNavAppBar(BuildContext context, GlobalKey<ScaffoldState> key){
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: !ResponsiveWidget.isSmallScreen(context)?
    Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset('assets/icons/logo.png',fit: BoxFit.contain,width: 30,),
        )
      ],
    ):IconButton(
        onPressed: (){
          key.currentState?.openDrawer();
        },
        icon: Icon(Icons.menu,color: dark,)
    ),
    title: Row(
      children: [
        Visibility(
          visible: !ResponsiveWidget.isSmallScreen(context),
          child: CustomText(text: 'My Admin Panel', color: lightGrey, size: 20, weight: FontWeight.bold,),
        ),
        Expanded(child: Container()),
        IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.settings,color: dark.withOpacity(0.7))
        ),
        Stack(
          children: [
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.notifications,color: dark.withOpacity(0.7))
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: light, width: 2)
                ),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        SizedBox(
          width: 24,
        ),
        CustomText(text: 'Majd Al Kayyal', size: 15, color: dark,weight: FontWeight.bold,),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(width: 1, color: lightGrey),
            image: DecorationImage(image: AssetImage('assets/images/me.jpeg'),fit: BoxFit.cover)
          ),
        )
      ],
    ),
    iconTheme: IconThemeData(color: dark),
  );
}