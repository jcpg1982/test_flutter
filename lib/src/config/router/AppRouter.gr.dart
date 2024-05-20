// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'AppRouter.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeApp.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeApp(),
      );
    },
    RegisterApp.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterApp(),
      );
    },
  };
}

/// generated route for
/// [HomeApp]
class HomeApp extends PageRouteInfo<void> {
  const HomeApp({List<PageRouteInfo>? children})
      : super(
          HomeApp.name,
          initialChildren: children,
        );

  static const String name = 'HomeApp';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterApp]
class RegisterApp extends PageRouteInfo<void> {
  const RegisterApp({List<PageRouteInfo>? children})
      : super(
          RegisterApp.name,
          initialChildren: children,
        );

  static const String name = 'RegisterApp';

  static const PageInfo<void> page = PageInfo<void>(name);
}
