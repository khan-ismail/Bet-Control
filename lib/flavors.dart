enum Flavor {
  prod,
  uat,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'BetControl';
      case Flavor.uat:
        return 'BetControl Uat';
      case Flavor.dev:
        return 'BetControl Dev';
      default:
        return 'title';
    }
  }

}
