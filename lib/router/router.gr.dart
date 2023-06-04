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
    TalePreviewDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<TalePreviewDescriptionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TaleScreen(
          key: args.key,
          talePreview: args.talePreview,
          totalReads: args.totalReads,
        ),
      );
    },
    TalePreviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TalePreviewScreen(),
      );
    },
  };
}

/// generated route for
/// [TaleScreen]
class TalePreviewDescriptionRoute
    extends PageRouteInfo<TalePreviewDescriptionRouteArgs> {
  TalePreviewDescriptionRoute({
    Key? key,
    required TalePreview talePreview,
    required int totalReads,
    List<PageRouteInfo>? children,
  }) : super(
          TalePreviewDescriptionRoute.name,
          args: TalePreviewDescriptionRouteArgs(
            key: key,
            talePreview: talePreview,
            totalReads: totalReads,
          ),
          initialChildren: children,
        );

  static const String name = 'TalePreviewDescriptionRoute';

  static const PageInfo<TalePreviewDescriptionRouteArgs> page =
      PageInfo<TalePreviewDescriptionRouteArgs>(name);
}

class TalePreviewDescriptionRouteArgs {
  const TalePreviewDescriptionRouteArgs({
    this.key,
    required this.talePreview,
    required this.totalReads,
  });

  final Key? key;

  final TalePreview talePreview;

  final int totalReads;

  @override
  String toString() {
    return 'TalePreviewDescriptionRouteArgs{key: $key, talePreview: $talePreview, totalReads: $totalReads}';
  }
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
