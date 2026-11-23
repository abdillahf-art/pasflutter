
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/transaksi_controller.dart';

class TransaksiPage extends StatelessWidget {
  TransaksiPage({super.key});

  final controller = Get.put(TransaksiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaksi Pembelian"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Image.network(
                      controller.gambar,
                      height: 220,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.fastfood,
                          size: 60,
                        );
                      },
                    ),
                  ),
                ),

                Text(
                  controller.nama,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),
                
                const SizedBox(height: 10),

                Text(
                  controller.deskripsi,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Jumlah makanan",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    controller.jumlah = int.tryParse(value) ?? 0;
                  },
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.jumlah <= 0) {
                        Get.snackbar(
                          "Error",
                          "Jumlah harus lebih dari 0",
                        );
                        return;
                      }

                      Get.dialog(
                        AlertDialog(
                          title: const Text("Rincian Pembayaran"),
                          content: Text(
                            "Makanan: ${controller.nama}\n"
                            "Jumlah: ${controller.jumlah}\n\n"
                            "Subtotal: Rp ${controller.hitungSubtotal().toStringAsFixed(0)}\n"
                            "PPN 5%: Rp ${controller.hitungPPN().toStringAsFixed(0)}\n\n"
                            "Total Bayar: Rp ${controller.hitungTotal().toStringAsFixed(0)}",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Get.back(),
                              child: const Text("Tutup"),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text("Bayar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
