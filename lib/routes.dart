import 'package:auto_route/auto_route.dart';
import 'package:payabale/screen/mainPage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainPage,
    )
  ],
)
class $AppRouter {}