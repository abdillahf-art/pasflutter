import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/list_makanan.dart';
import 'package:pasflutter/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: controller.dataMakanan.length,
      itemBuilder: (context, index) {
        final makanan = controller.dataMakanan[index];

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: InkWell(
            onTap: () {
              Get.toNamed(
                Routes.transaksi,
                arguments: {
                  'nama': makanan.namaMakanan,
                  'harga': makanan.hargaMakanan,
                  'gambar': makanan.image,
                  'deskripsi': makanan.deskripsi,
                },
              );
            },
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image.network(
                makanan.image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.fastfood, size: 50);
                },
              ),
              title: Text(
                makanan.namaMakanan,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("${makanan.hargaMakanan}"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
      },
    );
  }
}