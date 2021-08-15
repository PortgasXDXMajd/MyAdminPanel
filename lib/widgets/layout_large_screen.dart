import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/side-menu.dart';

class SiteLayoutLargeScreen extends StatefulWidget {
  @override
  _SiteLayoutLargeScreenState createState() => _SiteLayoutLargeScreenState();
}

class _SiteLayoutLargeScreenState extends State<SiteLayoutLargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
            child: SideMenu(),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}