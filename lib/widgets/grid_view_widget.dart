import 'package:flutter/material.dart';
import '../theme/custom_color.dart';

class WidgetGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GridView.builder(
        scrollDirection:
            Axis.horizontal, // Menetapkan arah scroll ke horizontal
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              1, // Set menjadi 1 untuk membuatnya berbaris secara horizontal
          childAspectRatio:
              1.6, // Atur rasio aspek agar kotak grid berbentuk persegi
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: 9,
        physics:
            const NeverScrollableScrollPhysics(), // Nonaktifkan scrolling gridview
        shrinkWrap: true, // Mengatur ukuran gridview sesuai dengan kontennya
        itemBuilder: (context, index) {
          return Container(
            width: 50, // Atur lebar kotak sesuai kebutuhan
            decoration: BoxDecoration(
              color: CustomColor.secondaryColor,
              borderRadius:
                  BorderRadius.circular(12.0), // Menambahkan border radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.fastfood,
                    color: Colors.white,
                    size: 128), // Mengubah ikon menjadi ikon makanan
                const SizedBox(height: 8.0),
                Text(
                  'Food Item ${index + 1}', // Mengubah teks menjadi item makanan
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Description ${index + 1}', // Mengubah teks deskripsi menjadi deskripsi makanan
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
