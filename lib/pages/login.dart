
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121214),
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        title: const Text(
          "Log in",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 20),

              const Text(
                "Nama pengguna",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                controller: controller.txtUsername,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Kata sandi",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                controller: controller.txtPassword,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Obx(
                () => controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.Login();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF335FFF),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Lanjutkan",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Lupa nama pengguna?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Center(
                child: Text(
                  "ATAU",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.key),
                label: const Text(
                  "Gunakan Passkey",
                  style: TextStyle(fontSize: 18),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.grey),
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.qr_code),
                label: const Text(
                  "Log in cepat",
                  style: TextStyle(fontSize: 18),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.grey),
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.grey),
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Opsi log in lainnya",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
