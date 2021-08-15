import 'package:flutter/material.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/pages/overview/widgets/available-driver.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:get/get.dart';

class DriversPage extends StatefulWidget {
  @override
  _DriversPageState createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(()=>Row(
          children: [
            Container(
              margin:EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context)? 56 : 10, left: 10),
              child: CustomText(text: menuController.activeItem.value,size: 24,weight: FontWeight.bold,),
            ),
          ],
        )),
        Expanded(
          child: ListView(
            children: [
              SizedBox(height: ResponsiveWidget.isSmallScreen(context)? 0:50,),
              AvailableDriverDataTable(),
            ],
          ),
        )
      ],
    );
  }
}
