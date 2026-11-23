
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pasflutter/model/teammodel.dart';

class FeatController extends GetxController {
  RxList<Team> listTeam = <Team>[].obs;

  var isLoading = false.obs;

  Future<void> getListTeam() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = premierLeagueModelFromJson(response.body);

        listTeam.value = data.teams;
      } else {
        Get.snackbar(
          "Gagal",
          "Gagal mengambil data tim",
        );
      }
    } catch (e) {
      Get.snackbar("Gagal", e.toString());
      print("Error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getListTeam();
  }

  Future<void> refreshTeam() async {
    await getListTeam();
  }
}
