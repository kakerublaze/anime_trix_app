import 'package:anime_trix/app/core/utils/exports.dart';

class MainScreenController extends GetxController {
  Rx<bool> isScrolled = false.obs;
  final ScrollController scrollController = ScrollController();
  Rx<int> selectedIndex = 0.obs;
  List<Widget> tabs = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    // const HomeScreen(),
    // const TvScreen(),
    // const ExploreScreen(),
    // const NewsScreen(),
    // const SettingsScreen(),
  ];
  List<String> tabsName = [
    'Zero',
    'Asian TV',
    'Explore',
    'Anime News',
    'Profile',
  ];

  void _scrollListener() {
    debugPrint(
      scrollController.position.pixels.toString(),
    ); // Log the scroll position to debug
    if (selectedIndex.value == 0) {
      if (scrollController.position.pixels >= 140) {
        isScrolled.value = true;
        isScrolled.refresh();
      } else {
        isScrolled.value = false;
        isScrolled.refresh();
      }
    }
  }

  @override
  void onInit() {
    scrollController.addListener(_scrollListener);
    super.onInit();
  }
}
