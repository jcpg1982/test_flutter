import 'package:auto_route/auto_route.dart';
import 'package:test_flutter/src/config/router/AppRouter.gr.dart';
import 'package:test_flutter/src/data/model/Routes.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeApp.page, path: Routes.home, initial: true),
        AutoRoute(page: RegisterApp.page, path: Routes.register)
      ];
}

final appRouter = AppRouter();

//dart run build_runner watch  para autogenerar
