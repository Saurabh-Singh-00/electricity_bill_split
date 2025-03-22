import 'dart:async';

import 'package:get_it/get_it.dart';

typedef GetItInitializer = FutureOr<void> Function(GetIt getIt, {String? env});

abstract class DiInitializer {
  const DiInitializer(this._initializer);

  final GetItInitializer _initializer;

  FutureOr<void> init(GetIt getIt, {String? env}) =>
      _initializer(getIt, env: env);
}

final di = GetIt.instance;
