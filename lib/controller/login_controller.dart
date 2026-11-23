import 'package:pasflutter/model/logmodel.dart';
import 'package:pasflutter/routes.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  void Login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username dan password harus terisi");
    } else {
      try {
        isLoading.value =
            true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          loginModel.value = loginModelFromJson(response.body);
          if (loginModel.value?.status == true) {
            Get.snackbar("Berhasil", loginModel.value!.message);
            // pindah ke main menu

            Get.offNamed(Routes.drawer);
          } else {
            Get.snackbar("gagal", loginModel.value!.message);
          }
        } else {
          Get.snackbar("gagal", "cek internet connection");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}