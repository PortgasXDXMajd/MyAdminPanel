import 'package:flutter/material.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/pages/clients/widgets/ClientTable.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:get/get.dart';
class ClientsPage extends StatefulWidget {
  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
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

        SizedBox(height: ResponsiveWidget.isSmallScreen(context)? 0:50,),

        Expanded(
          child: ListView(
            children: [
              ClientsDataTable()

            ],
          ),
        )
      ],
    );
  }
}
