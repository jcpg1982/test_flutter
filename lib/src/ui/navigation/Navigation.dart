import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/model/Routes.dart';
import '../screens/Home.dart';
import '../screens/Register.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    Routes.home: (context) => const HomeApp(),
    Routes.register: (context) => const RegisterApp(),
  };
}

/*Navigator getNavigator() {
  return Navigator(
    pages: const [
      MaterialPage<void>(
        key: ValueKey<String>(Routes.home),
        child: HomeApp(),
      ),
      MaterialPage<void>(
        key: ValueKey<String>(Routes.register),
        child: RegisterApp(),
      ),
    ],
    onPopPage: (Route<void> route, void result) {
      if (!route.didPop(result)) {
        print('onPopPage: didPop: false');
        return false;
      }
      print('onPopPage: didPop: true');
      route.onPopInvoked(true);
      return true;
    },
  );
}*/
