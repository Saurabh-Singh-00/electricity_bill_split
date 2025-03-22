import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/core/di_initializer/di_initializer.dart';
import 'di.config.dart';

Future<GetIt> initialize(List<DiInitializer> initializers) async {
  for (final initializer in initializers) {
    await initializer.init(di);
  }
  await _init(di);
  return di;
}

@InjectableInit()
Future<GetIt> _init(GetIt getIt, {String? env}) async =>
    getIt.init(environment: env);
