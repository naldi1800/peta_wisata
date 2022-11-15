import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '/app/modules/detail/views/detail_view.dart';
import '/app/routes/app_pages.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../controllers/maps_controller.dart';
import '/app/utils/dataMarker.dart';

class MapsView extends GetView<MapsController> {
  MapsView({Key? key, required this.posStart, required this.zoom})
      : super(key: key);
  LatLng posStart;
  int zoom;
  final Completer<GoogleMapController> _controller = Completer();
  Marker markerWidget(DataMarker e) {
    return Marker(
      markerId: MarkerId(e.nama),
      position: e.latLng,
      onTap: () => {
        if (!controller.showInfoMarker.value)
          controller.showInfoMarkerTo(index: e.id)
        else
          controller.scrollToItem(index: e.id),
      },
    );
  }

  Widget cardMarkerInfo({required DataMarker item}) => GestureDetector(
        onTap: () {
          Get.toNamed(
            Routes.DETAIL,
            arguments: DetailView(
              data: item,
              fromList: false,
            ),
          );
        },
        child: Container(
          width: 275,
          // ignore: sort_child_properties_last
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    child: Image.asset(
                      "assets/images/${item.id + 1}.jpg",
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          '${item.nama}'.capitalize.toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${item.jarak}'),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.cyan[400],
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      );

  Future<void> _goToViewAll() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        const CameraPosition(
          target: LatLng(-5.628697306326136, 132.75023178464048),
          zoom: 10,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              mapToolbarEnabled: false,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: posStart,
                zoom: 10,
              ),
              onMapCreated: (GoogleMapController c) {
                _controller.complete(c);
              },
              zoomControlsEnabled: false,
              zoomGesturesEnabled: true,
              markers:
                  controller.listMarker.map((e) => markerWidget(e)).toSet(),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Visibility(
                visible: controller.showInfoMarker.value,
                child: SizedBox(
                  height: 170,
                  child: ScrollablePositionedList.separated(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 10, right: 30, left: 30),
                    itemCount: controller.listMarker.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (__, _) => const SizedBox(width: 12),
                    itemBuilder: (_, index) => cardMarkerInfo(
                      item: controller.listMarker[index],
                    ),
                    itemScrollController: controller.itemScrollC,
                    itemPositionsListener: controller.itemScrollP,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Visibility(
          visible: !controller.showInfoMarker.value,
          child: FloatingActionButton(
            onPressed: () => _goToViewAll(),
            tooltip: "Show All Wisata Page",
            child: const Icon(Icons.my_location),
          ),
        ),
      ),
    );
  }
}
