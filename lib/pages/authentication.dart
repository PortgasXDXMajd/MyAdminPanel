import 'package:flutter/material.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(()=>Row(
          children: [
            Container(
              margin:EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context)? 56 : 10, left: 10),
              child: CustomText(text: menuController.activeItem.value,size: 24,weight: FontWeight.bold,),
            )

          ],
        ))
      ],
    );
  }
}
