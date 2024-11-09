

import 'package:anime_trix/app/core/utils/exports.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
      () => MainScreenController(),
    );
  }
}
