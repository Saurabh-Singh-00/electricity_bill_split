import 'package:flutter/material.dart';
import 'package:myapp/app/navigation/router.dart';
import 'package:myapp/core/design_system/theme.dart';

class BillSplitApp extends StatelessWidget {
  const BillSplitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      title: 'Split App',
      theme: AppTheme.themeData(context),
      darkTheme: AppTheme.themeDataDark(context),
    );
  }
}
