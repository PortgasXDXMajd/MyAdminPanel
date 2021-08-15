import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatefulWidget {
  final String itemName;
  final Function onTap;
  VerticalMenuItem({required this.itemName,required this.onTap});

  @override
  _VerticalMenuItemState createState() => _VerticalMenuItemState();
}

class _VerticalMenuItemState extends State<VerticalMenuItem> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        widget.onTap();
      },
      onHover: (value){
        value?
        menuController.onHover(widget.itemName):
        menuController.onHover('not Hovering');
      },
      child: Obx(()=>Container(
        color: menuController.isHovering(widget.itemName)? lightGrey.withOpacity(0.1):Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: menuController.isHovering(widget.itemName)|| menuController.isActive(widget.itemName),
              child: Container(
                width: 6,
                height: 75,
                color: dark,
              ),
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
            ),


            Expanded(
              child: Column(
                mainAxisSize:MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: menuController.returnIconFor(widget.itemName),
                  ),

                  if(!menuController.isActive(widget.itemName))
                    Flexible(
                      child: CustomText(text: widget.itemName,color: menuController.isHovering(widget.itemName)?dark:lightGrey),
                    )
                  else
                    Flexible(
                      child: CustomText(text: widget.itemName,color: dark,size: 18, weight: FontWeight.bold,),
                    )
                ],
              ),
            )
          ],
        ),
      )),


    );
  }
}
