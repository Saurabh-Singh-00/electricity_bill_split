import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/split_bill/presentation/split_bill.dart';

part 'router.g.dart';

final _routes = $appRoutes;

class AppRouter {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  static GoRouter router = GoRouter(
    routes: _routes,
    navigatorKey: navigationKey,
    initialLocation: const SplitBillRoute().location,
  );
}

@TypedGoRoute<SplitBillRoute>(path: '/split_bill')
class SplitBillRoute extends GoRouteData {
  const SplitBillRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplitBill();
}
