import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/layout_large_screen.dart';
import 'package:flutter_app/widgets/layout_small_screen.dart';


const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;



class ResponsiveWidget extends StatelessWidget {
  Widget screen = Container();

  static bool isLargeScreen(BuildContext context) => MediaQuery.of(context).size.width >= largeScreenSize;
  static bool isMediumScreen(BuildContext context) => MediaQuery.of(context).size.width < largeScreenSize && MediaQuery.of(context).size.width >= mediumScreenSize;
  static bool isSmallScreen(BuildContext context) => MediaQuery.of(context).size.width < mediumScreenSize && MediaQuery.of(context).size.width >= smallScreenSize;



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double _width = constraints.maxWidth;
      if(_width >= largeScreenSize){
        return SiteLayoutLargeScreen();
      }else if (_width < largeScreenSize && _width >= mediumScreenSize){
        return SiteLayoutLargeScreen();
      }else{
        return SiteLayoutSmallScreen();
      }
    });
  }
}