import 'package:auto_route/auto_route.dart';

part 'AppRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /*AutoRoute(page: HomeApp.page, path: Routes.home, initial: true),
        AutoRoute(page: RegisterApp.page, path: Routes.register)*/
      ];
}

final appRouter = AppRouter();

//dart run build_runner watch  para autogenerar
