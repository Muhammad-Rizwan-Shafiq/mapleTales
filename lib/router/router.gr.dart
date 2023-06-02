// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    TalePreviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TalePreviewScreen(),
      );
    }
  };
}

/// generated route for
/// [TalePreviewScreen]
class TalePreviewRoute extends PageRouteInfo<void> {
  const TalePreviewRoute({List<PageRouteInfo>? children})
      : super(
          TalePreviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TalePreviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
