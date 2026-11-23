import 'package:pasflutter/pages/login.dart';
import 'package:pasflutter/pages/transaksi.dart';
import 'package:pasflutter/menu/homemenu.dart';
import 'package:pasflutter/pages/drawer.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = "/login";
  static const String makanan = "/makanan";
  static const String transaksi = "/transaksi";

  static const String home = "/home";
  static const String drawer = "/drawer";

static final myPages = [
  GetPage(name: login, page: () => LoginPage()),
  GetPage(name: transaksi, page: () => TransaksiPage()),
  GetPage(name: home, page: () => HomePage()),
    GetPage(name: drawer, page: () => MainPage()),

];
}