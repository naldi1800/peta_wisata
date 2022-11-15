import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/maps/bindings/maps_binding.dart';
import '../modules/maps/views/maps_view.dart';
import '../utils/alldata.dart';
import '../utils/dataMarker.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAPS,
      page: () {
        MapsView mapsView = Get.arguments;
        return mapsView;
      },
      binding: MapsBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () {
        DetailView _detailView = Get.arguments;
        return _detailView;
      },
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
  ];
}
