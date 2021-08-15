import 'package:flutter/material.dart';
import 'package:flutter_app/pages/authentication.dart';
import 'package:flutter_app/pages/clients.dart';
import 'package:flutter_app/pages/drivers.dart';
import '../pages/overview/overview.dart';
import 'package:flutter_app/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case overViewPageRoute:
      return _getPageRoute(OverviewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    case authenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context)=>child);
}