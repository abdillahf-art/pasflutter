import 'package:get/get.dart';
import 'package:pasflutter/model/makanan.dart';

class ListDetailMakananController extends GetxController {
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}