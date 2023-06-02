import 'package:auto_route/auto_route.dart';
import '../features/talepreview/TalePreviewScreen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/talepreviews',
      page: TalePreviewRoute.page,
      initial: true,
    )
  ];
}
