
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/featcontroller.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(FeatController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (controller.listTeam.isEmpty) {
        return Center(
          child: ElevatedButton(
            onPressed: controller.getListTeam,
            child: const Text("Coba Lagi"),
          ),
        );
      }

      return RefreshIndicator(
        onRefresh: controller.refreshTeam,
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: controller.listTeam.length,
          itemBuilder: (context, index) {
            final team = controller.listTeam[index];

            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Image.network(
                  team.strBadge,
                  width: 50,
                  height: 50,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.sports_soccer,
                      size: 40,
                    );
                  },
                ),
                title: Text(
                  team.strTeam,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Stadium: ${team.strStadium}",
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
