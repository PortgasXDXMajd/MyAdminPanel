import 'package:flutter/material.dart';
import 'package:flutter_app/constants/controllers.dart';
import 'package:flutter_app/routing/router.dart';
import 'package:flutter_app/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overViewPageRoute,
  onGenerateRoute: generateRoute,
);