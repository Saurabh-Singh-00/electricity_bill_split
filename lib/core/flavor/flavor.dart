enum Env { dev, stg, prod }

class Flavor {
  const Flavor({required this.env});

  final Env env;
}
