import 'package:get/get.dart';
import 'package:pasflutter/model/makanan.dart';

class TransaksiController extends GetxController {
  late String nama;
  late double harga;
  late String gambar;
  late String deskripsi;


  final double ppn = 0.05;

  int jumlah = 1;

  @override
  void onInit() {
    super.onInit();


    final arguments = Get.arguments;

    nama = arguments['nama'];
    harga = arguments['harga'];
    gambar = arguments['gambar'];
    deskripsi = arguments['deskripsi'];
  }

  double hitungSubtotal() {
    return harga * jumlah;
  }

  double hitungPPN() {
    return hitungSubtotal() * ppn;
  }

  double hitungTotal() {
    return hitungSubtotal() + hitungPPN();
  }
}