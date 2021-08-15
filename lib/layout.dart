import 'package:flutter/material.dart';
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
          appBar: topNavAppBar(context,scaffoldKey),
          backgroundColor: Colors.black.withOpacity(0.01),
          drawer:ResponsiveWidget.isSmallScreen(context)?
          Drawer(
            child: SideMenu(),
          ):null,
          body: ResponsiveWidget(),
        )
    );
  }
}
