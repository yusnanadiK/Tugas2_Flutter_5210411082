import 'package:flutter/material.dart';
import 'package:tugas2ml_flutter_5210411082/screens/login_screen.dart';
import '../theme/custom_color.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/photo_yus_square.jpg', // Pastikan path gambar benar
              height: 150,
            ),
            const SizedBox(height: 20),
            // Email Input
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'yusnanadikusuma@gmail.com',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                      color: Colors.blue), // Border saat tidak fokus
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:
                      const BorderSide(color: Colors.blue), // Border saat fokus
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // Password Input
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nama',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: ' Yusnan Adi Kusuma',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                      color: Colors.blue), // Border saat tidak fokus
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:
                      const BorderSide(color: Colors.blue), // Border saat fokus
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // Confirm Password Input
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'NPM',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '5210411082',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                      color: Colors.blue), // Border saat tidak fokus
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:
                      const BorderSide(color: Colors.blue), // Border saat fokus
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: CustomColor.thirthColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Ubah Profil',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
