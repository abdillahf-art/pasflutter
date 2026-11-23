import 'package:pasflutter/model/makanan.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
    RxList<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: 25.000,
      review: "Enak sekali!",
      rating: "4.5",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjOiM8avtZHzFPy8J11-ospALgKvtALlpA1B42pLsx4FRJJIS0a6HE2-_mCycQnTJRJyfiQMo4HDGAmv1sqracv0xhwG_jZK6LuHQ9fGDU&s=10",
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: 30.000,
      review: "Sedap!",
      rating: "4.2",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUT5plh-WVO0w_IDE39NJ4SZuALM0o98FpLoVt-_8uAKgRvJZNYZbxs8uZ8JSDF0-sQuO3ozpZm2vsTdrhRxmOPtVIAvlZb1kTvpFGkJdwAg&s=10",
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: 28.000,
      review: "Sedap!",
      rating: "4.3",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpxpnd5Bip_RCKImoXkx-W_Pc_nZw9IaTrXFls3UcHUlyDW0WrUQVH15leoZOlYPuLT1LUwszaBAanG619_FekeAMSYV12gvzV2dIx-nTThg&s=10",
      deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: 20.000,
      review: "Lezat!",
      rating: "4.0",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWRqciPbNYhnshLA2f8S8AR9Bc3LHD_nUa7tPd7jLSnpbZbzHSRMX7oQb12DIwat33fLl-d0HsY4NpXRtC77H_LkuXV0U-kCKPhSJR9a1v&s=10",
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: 8.000,
      review: "Rasanya segar!",
      rating: "4.2",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Y_PsVWIAc9Oqj5p2zdMp-JvglLt-13Y0sZ78EHpJehM17FAo8dsZclapewPuZMQLBGrjKCUuaQldx37FTzVJlW2Oy37Wvb8bY78pGFft&s=10",
      deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
    ),
  ].obs;
}