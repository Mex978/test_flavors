import 'package:package_info_plus/package_info_plus.dart';

enum Flavor { DEV, QA, HOM, PROD }

class F {
  static Future<void> fetchFlavor() async {
    await PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      switch (packageInfo.packageName) {
        case "com.example.test_app.dev":
          appFlavor = Flavor.DEV;
          break;
        case "com.example.test_app.qa":
          appFlavor = Flavor.QA;
          break;
        case "com.example.test_app.hom":
          appFlavor = Flavor.HOM;
          break;
        case "com.example.test_app":
          appFlavor = Flavor.PROD;
          break;
        default:
          appFlavor = Flavor.DEV;
      }
    });
  }

  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Test App - DEV';
      case Flavor.QA:
        return 'Test App - QA';
      case Flavor.HOM:
        return 'Test App - HOM';
      case Flavor.PROD:
        return 'Test App';
      default:
        return 'title';
    }
  }
}
