import 'package:flutter/material.dart';
import 'package:project_mobiledev/home.dart';
import 'package:project_mobiledev/page3.dart';
import 'package:project_mobiledev/data_divisi.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 61, 28),
        title: const Text("Daftar Kepengurusan"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
            ),
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

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.8,
            ),
            itemCount: dataDivisi.length,
            itemBuilder: (context, index) {
              final item = dataDivisi[index];

              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Page3(divisiData: item);
                      },
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(57, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            item['foto'] ?? 'Tanpa Foto',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12.0),

                      Text(
                        item['nama'] ?? 'Tanpa Nama',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(222, 255, 255, 255),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4.0),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 6, 62, 6),
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Home();
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
