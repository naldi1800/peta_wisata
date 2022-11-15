import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '/app/utils/dataMarker.dart';
import '/app/utils/alldata.dart';

class MapsController extends GetxController {
  final itemScrollC = ItemScrollController();
  final itemScrollP = ItemPositionsListener.create();
  List<DataMarker> listMarker = allData.listMarker;
  var showInfoMarker = false.obs;
  void showInfoMarkerTo({required int index}) async {
    showInfoMarker.value = await (showInfoMarker.value) ? false : true;
    scrollToItem(index: index);
  }

  Future scrollToItem({required int index}) async {
    print(index);
    await itemScrollC.scrollTo(
      index: index,
      alignment: 0.115,
      duration: const Duration(milliseconds: 1250),
    );
  }

  @override
  void onInit() {
    super.onInit();
    itemScrollP.itemPositions.addListener(() {
      final indices = itemScrollP.itemPositions.value
          .where((e) {
            final isTopVisible = e.itemLeadingEdge >= -0.7;
            final isBottomVisible = e.itemTrailingEdge <= 1.5;
            return isTopVisible && isBottomVisible;
          })
          .map((e) => e.index)
          .toList();
      print(indices);
    });
  }
}
