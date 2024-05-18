// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:test_flutter/src/ui/screens/Home.dart' as _i1;
import 'package:test_flutter/src/ui/screens/Register.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeApp.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeApp(),
      );
    },
    RegisterApp.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterApp(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeApp]
class HomeApp extends _i3.PageRouteInfo<void> {
  const HomeApp({List<_i3.PageRouteInfo>? children})
      : super(
          HomeApp.name,
          initialChildren: children,
        );

  static const String name = 'HomeApp';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegisterApp]
class RegisterApp extends _i3.PageRouteInfo<void> {
  const RegisterApp({List<_i3.PageRouteInfo>? children})
      : super(
          RegisterApp.name,
          initialChildren: children,
        );

  static const String name = 'RegisterApp';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
