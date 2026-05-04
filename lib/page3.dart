import 'package:flutter/material.dart';
import 'package:project_mobiledev/tombol_favorite.dart';

class Page3 extends StatelessWidget {
  final Map<String, String> divisiData;

  const Page3({super.key, required this.divisiData});

  @override
  Widget build(BuildContext context) {
    int numMembers = int.parse(divisiData['num_members'] ?? '0');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 61, 28),
        title: const Text("Detail Pengurus"),
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
        actions: const [TombolFavoritInteraktif(), SizedBox(width: 8)],
      ),

      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 24, 54, 25),
              Color.fromARGB(255, 34, 71, 36),
              Color(0xFF3D7A3D),
            ],
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.reply_rounded,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              Center(
                child: SizedBox(
                  width: 268,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      divisiData['foto_detail'] ?? 'assets/images/logo.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        divisiData['nama_lengkap'] ?? 'Tidak Ada Namanya',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      divisiData['deskripsi'] ?? 'Tidak Ada Deskripsi',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                itemCount: numMembers,
                itemBuilder: (context, index) {
                  int i = index + 1;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                divisiData['member_foto_$i'] ??
                                    'assets/images/logo.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                divisiData['member_nama_$i'] ?? '-',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 2),

                              Text(
                                divisiData['member_jabatan_$i'] ?? '-',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 4),

                              Text(
                                'IG: ${divisiData['member_ig_$i']}',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                ),
                              ),

                              if (divisiData.containsKey('member_wa_$i'))
                                Text(
                                  'WA: ${divisiData['member_wa_$i']}',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
