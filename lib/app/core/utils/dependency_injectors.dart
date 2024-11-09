import 'package:anime_trix/app/core/utils/exports.dart';

class DependencyInjector {
  static init() {
    Get.lazyPut(
      () => SplashScreenController(),
      fenix: true,
    );
  }
}
