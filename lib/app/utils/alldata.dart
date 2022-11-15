import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dataMarker.dart';

class allData {
  static List<DataMarker> listMarker = [
    DataMarker(
      id: 0,
      nama: "Pantai Ngurbloat",
      lokasi: "Ohio Ngilngof, Kec Manyew",
      latLng: const LatLng(-5.66226321322068, 132.63631469869378),
      jarak: "12 Km, ${String.fromCharCode(241)}17 menit",
      dayaTarikWisata: "Pantai pasir putih yang halus",
      deskripsi:
          "Ngurbloat berasal dari bahasa Kei yang berarti pasair panjang. Namun sesuai dengan kondisi alamnya dimana terdapata hamparan pasir putih berstruktur halus seperti tepung. Kondisi pantai bersih, tenang dan hamparan pepohonan di tepi pantai yang memberikan suasana sejuk dapat dijumpai di pantai Ngurbloat. Pantai Ngurbloat termasuk wisata alam yang sedang berkembang. Pantai ini juga merupakan tempat yang tepat untuk berenang, berjemur dan menikmati pemandangan matahari terbenam (sunset) yang sangat memukau.",
      jenisDTW: "Wisata Alam",
      luas: "3 Km",
      saranaPrasarana:
          "Rumah makan 40 unit, cottage, homestay, penginapan, tempat hiburan, shelter, tempat parkir, toko cendramata dan toilet.",
      fasilitasPendukung:
          "Listrik, Air bersih dan Jaringan komunikasi(telp, wifi)",
      statusKepemilikan: "Ohoi Ngilngof",
    ),
    DataMarker(
      id: 1,
      nama: "Pantai Ngursarnadan",
      lokasi: "Ohoi Ohoililir, Kec Manyew",
      latLng: const LatLng(-5.648091903279045, 132.63818197789735),
      jarak: "12 Km, ${String.fromCharCode(241)}17 menit",
      dayaTarikWisata: "Pantai pasir putih yang halus",
      deskripsi:
          "Pantai Ngursarnadan merupakan tempat yang menyenangkan dan romantis. Cocok dengan wisatwan yang ingin mneyendiri dan menukmati suasana yang tenang. Kondisi pantai yang bersi dengan pemandangan pantai indah juga pulau-pulau kecil terlihat dari bibir pantai, bersnorkling dengan menikmati terumbu karang yang selalu terjaga kelestarianya.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Homestay, warung makan dan coaster",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) dan tempat parkir",
      statusKepemilikan: "Ohoi Ohoililir",
    ),
    DataMarker(
      id: 2,
      nama: "Pantai Ohoidertawun",
      lokasi: "Ohoi Ohoidertawun, Kec Kei Kecil",
      latLng: const LatLng(-5.6295976201177105, 132.66709439139018),
      jarak: "11.4 Km, ${String.fromCharCode(241)}24 menit dari Langgur",
      dayaTarikWisata:
          "Pantai,pasir yang menjorok ke laut ketika pasang surut dan goa luvat",
      deskripsi:
          "Pantai Nadiun merupakan objek wisata yang ramai dikunjungi wisatawan pada hari-hari libur. Terdapat juga lukisan yang klasik di dinding batu yang terletak tidak jauh dari pantai, lukisan ini menyerupai gambar binatang, perahu dan matahari.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Homestay, warung makan, toilet dan shelter",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) dan tempat parkir",
      statusKepemilikan: "Ohoi Ohoidertawun",
    ),
    DataMarker(
      id: 3,
      nama: "Air Nen Mas III",
      lokasi: "Ohoi Evu, Kec Hoat Sorbay",
      latLng: const LatLng(-5.790086684043135, 132.70375769472008),
      jarak: "16 Km, ${String.fromCharCode(241)}25 menit",
      dayaTarikWisata: "Kolam pemandian dan tempat bersantai",
      deskripsi:
          "Destinasi ini pengunjung dapat merasakan kesegaran air kolam yang bersumber dari mata air wear mas el. Selain itu dijadikan tempat latihan bagi atlet renang dan tempat pendidikan dan pelatihan selam. Tersedia transportasi umum dengan rute Langgur ke Ohoi Evu, tersedia juga roda dua dan roda empat yang dapat disewa untuk menuju Evu.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Homestay, warung makan, toilet dan shelter",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) dan tempat parkir",
      statusKepemilikan: "Ohoi Evu",
    ),
    DataMarker(
      id: 4,
      nama: "Goa Hawang",
      lokasi: "Ohoi Letvuan, Kec Hoat Sorbay",
      latLng: const LatLng(-5.758043700606257, 132.70162143917494),
      jarak: "14 Km, ${String.fromCharCode(241)}20 menit",
      dayaTarikWisata:
          "Wisata kuliner sepanjang pantai dan tempat penjualan ikan segar",
      deskripsi:
          "Goa dengan sumber air bawah tanah yang jernih berupa stalagnit dan stalagtit. Anda akan disuguhkan dengan sebuah kolam air tawar yang bila terkena pantulan sinar matahari terlihat sangat indah menakjubkan. Di dalam gua tersebut juga terdapat sebuah batu yang melambangkan seorang pria memegang tombak bersama dua ekor anjing.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Warung makan, toilet dan shelter",
      fasilitasPendukung:
          "Listrik, Air bersih dan Jaringan komunikasi(telp, wifi)",
      statusKepemilikan: "Ohoi Ngilngof",
    ),
    DataMarker(
      id: 5,
      nama: "Pantai Ngur Vat Namsir",
      lokasi: "Ohoi Wab, kec Hoat Sorbay",
      latLng: const LatLng(-5.804092397657468, 132.68644082383318),
      jarak: "${String.fromCharCode(241)}1 jam dengan speedboat",
      dayaTarikWisata: "Pantai yang indah dengan pasir putih yang halus",
      deskripsi:
          "Pantai Ngur Vat Namsir berada di wilayah tengah pesisir berat pulau kei kecil. Untuk biasa sampai disini harus melalui 2 jalur yaitu darat dan laut. Jika melalui jalur darat kita menggunakan angkutan umum juga angkutan pribadi baik berupa roda dua dan roda empat sedangkan melalui jalur laut kita menggunakan speedboat dari Ohoi Dian Pulau Wab dimana pantai ini berada.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Warung makan, toilet dan shelter",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) dan tempat parkir",
      statusKepemilikan: "Ohoi Wab",
    ),
    DataMarker(
      id: 6,
      nama: "Ngurtavur",
      lokasi: "Ohoi Warbal, Kec Kei Kecil Barat",
      latLng: const LatLng(-5.802940729505258, 132.5967291588844),
      jarak: "${String.fromCharCode(241)}45 menit dengan speedboat",
      dayaTarikWisata:
          "Pantai dengan pasir putih yang indah dengan daratan yang menjorok ke laut sepanjang ${String.fromCharCode(241)} 2Km dengan lebar 7 meter",
      deskripsi:
          "Destinasi wisata ini terletak di palau Waha, wilayah ohoi warbal. Pasir putih pantai yang menjorok ke laut sepanjang 2000 meter dengan dikelilingi pulau - palau kecil lainya yang menjadikan pantai yang indah menjadi tujuan wisata yang sangat menarik untuk dikunjungi.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Menara pandang, toilet dan shelter",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) dan tempat parkir",
      statusKepemilikan: "Ohoi Warbal",
    ),
    DataMarker(
      id: 7,
      nama: "Kampung Adat",
      lokasi: "Ohoi Tanimbar Kei, Kec Kei Kecil Barat",
      latLng: const LatLng(-6.0258952, 132.4448597),
      jarak: "${String.fromCharCode(241)}2 Jam dengan speedboot",
      dayaTarikWisata:
          "Kampung adat, Rumah tradisional, Living Culture dan makanan tradisional (hotong dan kian)",
      deskripsi:
          "Kampung adat Tanimbar Kei terbagi menajdi 2 yaitu kampung atas dan kampung bawah. Banyak hal yang menarik disini yaitu arsitektur bangunan adat istiadat, kesenian dan juga kepercayaan leluhur yang masih dipegang teguh oleh penduduknya. Kondisi lingkungan, penataan ruang dan kemungkinan pengembangan kampung adat ini sangat potensial. masih tersedia ruang terbuka alami yang dapat digunakan untuk pengembangan daya tarik wisata kedepan.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "NA",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi), tempat parkir dan tempat sampah",
      statusKepemilikan: "Ohoi Tanimbar Kei",
    ),
    DataMarker(
      id: 8,
      nama: "Air Terjun Ad",
      lokasi: "Ohoi Ad, Kec Kei Besar Utara Barat",
      latLng: const LatLng(-5.8229281, 132.9368012),
      jarak: "${String.fromCharCode(241)}2 Jam denga speedboot",
      dayaTarikWisata: "Air terjun dengan 7 tingkat",
      deskripsi:
          "Air terjun ini mengandung bebatuan serta kolam pemandian bersusun dimana memiliki keunikan tersendiri",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "NA",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi), tempat parkir dan tempat sampah",
      statusKepemilikan: "Ohoi Ad",
    ),
    DataMarker(
      id: 9,
      nama: "Hoat Tamngil",
      lokasi: "Oho Rumadian, Kec Hoat Sorbay",
      latLng: const LatLng(-5.7434574964569824, 132.6895333968458),
      jarak: "${String.fromCharCode(241)}15 menit dari Langur",
      dayaTarikWisata: "Hutan Mangrove seluas 15 Hektar",
      deskripsi:
          "Hoat Tamngil terletak di ohoi Rumadian Kecamatan Manyeuw, dengan jarak tempuh ± 8 km dari kota Langgur. Di sini juga terdapat Hutan Baku yang biasa dinikmati oleh pengunjung.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "Homestay, tempat santai, toilet dan kolam renang",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) tempat parkir dan tempat sampah",
      statusKepemilikan: "Ohoi Rumadian",
    ),
    DataMarker(
      id: 10,
      nama: "Pantai Metro",
      lokasi: "Ohoi Madwaer, Kec Kei Kecil Barat",
      latLng: const LatLng(-5.9037219, 132.6828508),
      jarak: "18,2 Km, ${String.fromCharCode(241)}27 menit dari Langur",
      dayaTarikWisata: "Pantai berpasir putih",
      deskripsi:
          "Pantai berpasir putih yang indah dengan birunya laut, disepanjang pantai terdapat pohon kelapa yang berjejeran, ada beberapa anak kecil yang bermain pasir, berenang, snorkeling dan apabila waktu sudah sore/malam ada pemuda-pemudi sering menhghabiskan waktu ditempat ini dengan berkemah.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "NA",
      fasilitasPendukung:
          "Listrik, Air bersih, Jaringan komunikasi(telp, wifi) dan Tempat parkir",
      statusKepemilikan: "Masyarakat",
    ),
    DataMarker(
      id: 11,
      nama: "Pantai Nirunn Elaar Ngirsoin",
      lokasi: "Ohoi Elaar Nirunn, Kec Kei Kecil Timur Selatan",
      latLng: const LatLng(-5.941239139060912, 132.77782182494016),
      jarak: "38,2 Km dari langur, ${String.fromCharCode(241)}56 menit",
      dayaTarikWisata: "Pantai berkarang",
      deskripsi:
          "Pantai berpasir putih dengan air laut yang jernih dan berwarna hijau tosca. Lokasi ini menawarkan pemandangan tanjung yang indah, tiupan angin sepoi-sepoi serta gelombang yang sangat menakjubkan pada saat musim timur. Pengunjung dapat menikmati sunrise sambil melihat perahu-perahu nelayan, pengunjung dapat menyelam dan melihat beragam biota laut yang masih alami.",
      jenisDTW: "Wisata Alam",
      luas: "NA",
      saranaPrasarana: "NA",
      fasilitasPendukung:
          "Listrik, Air bersih dan Jaringan komunikasi, tempat parkir dan toilet",
      statusKepemilikan: "Masyarakat",
    ),
  ];
}
