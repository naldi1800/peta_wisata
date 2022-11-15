import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '/app/modules/detail/views/detail_view.dart';
import '/app/modules/maps/views/maps_view.dart';
import '/app/routes/app_pages.dart';
import '/app/utils/alldata.dart';
import '/app/utils/dataMarker.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Alam"),
        backgroundColor: Color(0xff5F9EA0),
        actions: [
          PopupMenuButton(
            onSelected: ((value) {
              if (value == 0) {
                Get.toNamed(
                  Routes.MAPS,
                  arguments: MapsView(
                    posStart:
                        const LatLng(-5.628697306326136, 132.75023178464048),
                    zoom: 10,
                  ),
                );
              } else if (value == 1) {
                Get.toNamed(Routes.ABOUT);
              } else if (value == 2) {
                Get.close(0);
              }
            }),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: 0,
                child: Text("View On Maps"),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text("About"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("exit"),
              )
            ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/7.jpg"), fit: BoxFit.fitHeight),
        ),
        child: ListView.builder(
          itemCount: allData.listMarker.length,
          itemBuilder: (_, index) => buildCard(allData.listMarker[index]),
        ),
      ),
    );
  }

  Widget buildCard(DataMarker e) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          Routes.DETAIL,
          arguments: DetailView(
            data: e,
            fromList: true,
          ),
        );
      },
      onLongPress: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          color: Colors.transparent,
          child: ListTile(
            title: Text(
              e.nama,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              e.dayaTarikWisata,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
