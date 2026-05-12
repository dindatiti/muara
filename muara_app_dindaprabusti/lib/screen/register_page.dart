import 'package:flutter/material.dart';
import 'sudah_login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo & Title
            const Icon(Icons.groups, size: 80, color: Color(0xFF1A374D)),
            const Text(
              "MUARA",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A374D),
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 30),

            // Tab Masuk & Daftar
            Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey, width: 1)),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        "Masuk",
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Input Fields
            _buildTextField("Nama Lengkap", "Nama kamu"),
            const SizedBox(height: 15),
            _buildTextField("Email/No Wa", "Email/No Wa kamu"),
            const SizedBox(height: 15),
            _buildTextField("Password", "Masukkan password", isPassword: true),
            const SizedBox(height: 15),
            _buildTextField("Konfirmasi Password", "Masukkan konfirmasi password", isPassword: true),
            
            const SizedBox(height: 30),

            // Tombol Daftar Sekarang
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RoleSelectionScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5865F2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "Daftar Sekarang",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Divider Atau Masuk Dengan
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Atau Masuk Dengan", style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            const SizedBox(height: 20),

            // Social Register Buttons
            Row(
              children: [
                Expanded(child: _buildSocialButton("Google", Icons.g_mobiledata, Colors.red)),
                const SizedBox(width: 15),
                Expanded(child: _buildSocialButton("Apple", Icons.apple, Colors.black)),
              ],
            ),
            const SizedBox(height: 30),

            // Footer Privacy Policy
            Column(
              children: [
                const Text(
                  "Dengan ini, kamu menyetujui tentang",
                  style: TextStyle(fontSize: 13),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Ketentuan Layanan",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget Helper untuk TextField
  Widget _buildTextField(String label, String hint, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF333333))),
        const SizedBox(height: 6),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  // Widget Helper untuk Tombol Social
  Widget _buildSocialButton(String label, IconData icon, Color color) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: color, size: 28),
      label: Text(label, style: const TextStyle(color: Colors.black54)),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        side: const BorderSide(color: Colors.grey),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}