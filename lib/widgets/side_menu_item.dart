import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/widgets/horizontal-menu-item.dart';
import 'package:flutter_app/widgets/vertical-menu-item.dart';

class SideMenuItem extends StatefulWidget {
  final String itemName;
  final Function onTap;
  SideMenuItem({required this.itemName,required this.onTap});

  @override
  _SideMenuItemState createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem> {
  @override
  Widget build(BuildContext context) {
   if(ResponsiveWidget.isMediumScreen(context))
     return VerticalMenuItem(itemName: widget.itemName,onTap: widget.onTap,);
   else
     return HorizontalMenuItem(itemName: widget.itemName,onTap: widget.onTap,);
  }
}
