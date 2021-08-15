import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/widgets/side-menu.dart';
import 'package:flutter_app/widgets/top-nav.dart';


class SiteLayout extends StatefulWidget {
  @override
  _SiteLayoutState createState() => _SiteLayoutState();
}

class _SiteLayoutState extends State<SiteLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context),
        child: Scaffold(
          key: scaffoldKey,
          extendBodyBehindAppBar: true,
          appBar: topNavAppBar(context,scaffoldKey),
          backgroundColor: light,
          drawer:ResponsiveWidget.isSmallScreen(context)?
          Drawer(
            child: SideMenu(),
          ):null,
          body: ResponsiveWidget(),
        )
    );
  }
}
