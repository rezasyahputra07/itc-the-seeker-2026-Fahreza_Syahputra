import 'package:flutter/material.dart';
import 'package:project_mobiledev/page2.dart';
import 'package:project_mobiledev/data_divisi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 61, 28),
        title: const Text("Information Technology Club"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 26, 61, 28),
              Color.fromARGB(255, 34, 71, 36),
              Color(0xFF3D7A3D),
            ],
          ),
        ),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                'Information Technology Club',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Information Technology Club, adalah sebuah komunitas atau study group di lingkungan Teknik Informatika UPNVY yang berfokus pada pengembangan kemampuan teknologi. ITC ini mewadahi mahasiswa untuk belajar coding, membangun proyek nyata (real project), dan mempersiapkan kompetisi teknologi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 50),

              Center(
                child: Text(
                  'Highlight Ketua',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              SizedBox(
                width: 268,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/ketua.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Center(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Dzaki Ghatfaan     Grace Rianty\nAbhipraya               Butar Butar',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 8),

                    Center(
                      child: Text(
                        'Periode 2026',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 60),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Divisi Kami',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              for (var divisi in ringkasanDivisi)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        divisi['judul'] ?? 'Tanpa Judul',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),

                      Text(
                        divisi['deskripsi'] ?? 'Tanpa Deskripsi',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),

                      const Divider(
                        color: Colors.white24,
                        height: 30,
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 6, 62, 6),
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Page2();
                },
              ),
            );
          }
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_rounded),
            label: 'Struktur',
          ),
        ],
      ),
    );
  }
}
