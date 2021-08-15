import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/pages/overview/widgets/overview-card-large.dart';
import 'package:flutter_app/pages/overview/widgets/overview-card-medium.dart';
import 'package:flutter_app/pages/overview/widgets/overview-card-small.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:get/get.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  List<dynamic> infoCardData = [
    {
      "title":"Rides in progress",
      "value":"7",
      "color":Colors.orange,
      "isActive":false,
      "onTap":(){}
    },
    {
      "title":"Packages delivered",
      "value":"17",
      "color":Colors.green,
      "isActive":false,
      "onTap":(){}
    },
    {
      "title":"Candelled delivery",
      "value":"3",
      "color":Colors.red,
      "isActive":false,
      "onTap":(){}
    },
    {
      "title":"Scheduled deliveries",
      "value":"7",
      "color":Colors.amber,
      "isActive":false,
      "onTap":(){}
    },
  ];


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
        )),

        SizedBox(height: 100,),

        Expanded(
          child: ListView(
            children: [
              if(ResponsiveWidget.isLargeScreen(context))
                OverViewLargeCardWidget(data: infoCardData,)
              else if(ResponsiveWidget.isMediumScreen(context))
                OverviewMediumCardWidget(data: infoCardData,)
              else
                OverViewSmallCardWidget(data: infoCardData,)
            ],
          ),
        )
      ],
    );
  }
}
