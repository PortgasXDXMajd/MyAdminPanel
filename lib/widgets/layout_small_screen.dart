import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/local-navigator.dart';

class SiteLayoutSmallScreen extends StatefulWidget {
  @override
  _SiteLayoutSmallScreenState createState() => _SiteLayoutSmallScreenState();
}

class _SiteLayoutSmallScreenState extends State<SiteLayoutSmallScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: localNavigator(),
    );
  }
}
