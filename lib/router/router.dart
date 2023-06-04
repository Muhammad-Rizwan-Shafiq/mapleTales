import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:talepreview/features/talepreview/bloc/TalePreviewBloc.dart';
import '../features/tale/TaleScreen.dart';
import '../features/talepreview/TalePreviewScreen.dart';
import '../features/talepreview/models/TalePreview.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/talepreviews',
      page: TalePreviewRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/talepreviewdescription',
      page: TalePreviewDescriptionRoute.page,
      initial: false,
    )
  ];
}