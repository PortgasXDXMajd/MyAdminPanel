import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/widgets/CustomText.dart';
import 'package:get/get.dart';


class HorizontalMenuItem extends StatefulWidget {
  final String itemName;
  final Function onTap;
  HorizontalMenuItem({required this.itemName,required this.onTap});
  @override
  _HorizontalMenuItemState createState() => _HorizontalMenuItemState();
}

class _HorizontalMenuItemState extends State<HorizontalMenuItem> {
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
                height: 40,
                color: dark,
              ),
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
            ),
            
            SizedBox(width: _width/80,),
            
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
      )),


    );
  }
}
