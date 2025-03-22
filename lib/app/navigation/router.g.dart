// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splitBillRoute,
    ];

RouteBase get $splitBillRoute => GoRouteData.$route(
      path: '/split_bill',
      factory: $SplitBillRouteExtension._fromState,
    );

extension $SplitBillRouteExtension on SplitBillRoute {
  static SplitBillRoute _fromState(GoRouterState state) =>
      const SplitBillRoute();

  String get location => GoRouteData.$location(
        '/split_bill',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
