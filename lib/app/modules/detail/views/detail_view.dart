import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:map_launcher/map_launcher.dart';
import '/app/modules/maps/views/maps_view.dart';
import '/app/routes/app_pages.dart';
import '/app/utils/dataMarker.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  DetailView({Key? key, required this.data, required this.fromList})
      : super(key: key);

  DataMarker data;
  bool fromList;

  Future toMaps(
      {context, required Coords coords, required String title}) async {
    try {
      var maps = await MapLauncher.installedMaps;
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: [
                    for (var m in maps)
                      ListTile(
                        title: Text(m.mapName),
                        leading: SvgPicture.asset(
                          m.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                        onTap: () => m.showMarker(coords: coords, title: title),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  TableRow tableView({required List<String> cells}) => TableRow(
        children: cells.asMap().entries.map(
          (e) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                e.value,
                textAlign: (e.key == 2) ? TextAlign.justify : TextAlign.left,
              ),
            );
          },
        ).toList(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  '${data.nama}'.toUpperCase(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  child: Image.asset(
                    "assets/images/${data.id + 1}.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  columnWidths: const {
                    0: FractionColumnWidth(0.2),
                    1: FractionColumnWidth(0.05),
                    2: FractionColumnWidth(0.75),
                  },
                  children: [
                    tableView(cells: ['Deskripsi', ':', data.deskripsi]),
                    tableView(cells: ['Daya Tarik', ':', data.dayaTarikWisata]),
                    tableView(cells: ['Lokasi', ':', data.lokasi]),
                    tableView(cells: ['Jarak', ':', data.jarak]),
                    tableView(
                        cells: ['Fasilitas', ':', data.fasilitasPendukung]),
                    tableView(cells: ['Sarana', ':', data.saranaPrasarana]),
                    tableView(cells: ['Luas', ':', data.luas]),
                    tableView(cells: ['Milik', ':', data.statusKepemilikan]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Visibility(
                    visible: fromList,
                    child: ElevatedButton(
                      child: Row(children: const [
                        Icon(CupertinoIcons.back),
                        SizedBox(width: 5),
                        Text('View on maps')
                      ]),
                      onPressed: () {
                        Get.toNamed(
                          Routes.MAPS,
                          arguments: MapsView(
                            posStart: data.latLng,
                            zoom: 18,
                          ),
                        );
                      },
                    ),
                  ),
                  Visibility(
                    visible: !fromList,
                    child: ElevatedButton(
                      child: Row(children: const [
                        Icon(CupertinoIcons.back),
                        SizedBox(width: 5),
                        Text('back')
                      ]),
                      onPressed: () => Get.back(),
                    ),
                  ),
                  ElevatedButton(
                    child: Row(children: const [
                      Icon(CupertinoIcons.back),
                      SizedBox(width: 5),
                      Text('Route in gMaps')
                    ]),
                    onPressed: () => toMaps(
                      context: context,
                      coords: Coords(
                        data.latLng.latitude,
                        data.latLng.longitude,
                      ),
                      title: data.nama,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Visibility(
                visible: fromList,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: Row(children: const [
                        Icon(CupertinoIcons.back),
                        SizedBox(width: 5),
                        Text('back')
                      ]),
                      onPressed: () => Get.back(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
