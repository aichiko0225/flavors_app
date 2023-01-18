enum Flavor {
  OWNER,
  DRIVER,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.OWNER:
        return 'Owner App';
      case Flavor.DRIVER:
        return 'Driver App';
      default:
        return 'title';
    }
  }

}
