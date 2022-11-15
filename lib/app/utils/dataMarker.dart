import 'package:google_maps_flutter/google_maps_flutter.dart';

class DataMarker {
  int id;
  String nama;
  String lokasi;
  LatLng latLng;
  String jarak;
  String dayaTarikWisata;
  String deskripsi;
  String jenisDTW;
  String luas;
  String saranaPrasarana;
  String fasilitasPendukung;
  String statusKepemilikan;

  DataMarker({
    required this.id,
    required this.nama,
    required this.lokasi,
    required this.latLng,
    required this.jarak,
    required this.dayaTarikWisata,
    required this.deskripsi,
    required this.jenisDTW,
    required this.luas,
    required this.saranaPrasarana,
    required this.fasilitasPendukung,
    required this.statusKepemilikan,
  });
}
