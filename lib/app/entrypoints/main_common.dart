import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:myapp/app/di/di.dart';

void mainCommon(FutureOr<void> Function() app) async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize([]);
  await app();
}
