import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pasflutter/menu/homemenu.dart';
import 'package:pasflutter/menu/featmenu.dart';
import 'package:pasflutter/menu/profilemenu.dart';
import 'package:pasflutter/model/menumodel.dart';

class DrawerControllerX extends GetxController {
  var selectedIndex = 0.obs;

  final List<MenuModel> menuItems = [
    MenuModel(title: 'Home', icon: Icons.home),
    MenuModel(title: 'feat', icon: Icons.sports_soccer),
    MenuModel(title: 'Profile', icon: Icons.person),
  ];

  final List<Widget> pages = [
    HomePage(),
    FeatPage(),
    ProfilePage(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back(); // 
  }
}