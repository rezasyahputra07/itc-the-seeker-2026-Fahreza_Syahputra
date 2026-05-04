# ITC Directory - The Seeker Mobile Dev 2026

Repositori ini berisi *source code* aplikasi **ITC Directory** yang dibuat menggunakan framework Flutter sebagai proyek seleksi Divisi Mobile Development Information Technology Club (ITC) 2026.

##  Tentang Aplikasi
ITC Directory adalah solusi digital untuk mengenali struktur organisasi ITC secara praktis. Aplikasi ini dirancang agar anggota maupun calon anggota dapat mengetahui siapa saja yang menjabat di posisi strategis, memahami tugas mereka, serta dapat menghubungi pengurus yang bersangkutan secara langsung.

## Fitur Utama
Sesuai dengan spesifikasi tugas, aplikasi ini terdiri dari:
1. **Halaman Beranda (Home):** Memperkenalkan ITC secara singkat, profil Ketua Umum, dan deskripsi divisi.
2. **Halaman Daftar Kepengurusan:** Menampilkan hierarki jabatan (Ketua hingga Kepala Divisi) dalam bentuk card yang rapi.
3. **Halaman Detail Pengurus:** Menampilkan informasi mendalam tiap pengurus, termasuk deskripsi tugas, kontak person, serta **Tombol Aksi Favorite yang Interaktif**.

##  Solusi "The Challenge"
Aplikasi ini dibangun dengan menjawab tiga tantangan utama yang diberikan:

* **"Siapa Menjabat Apa?" Problem:** Diselesaikan dengan membedakan hierarki kepengurusan melalui pengelompokan komponen *card* berdasarkan tingkatan jabatan. Terdapat *card* khusus pada halaman struktur yang dapat diklik untuk mengarahkan pengguna ke halaman Detail Pengurus. Halaman tersebut menyajikan informasi lengkap, spesifik, dan dilengkapi foto profil individu sesuai jabatannya.
* **"Kontak Cepat" Problem:** Pada halaman Detail Pengurus, disediakan informasi kontak yang spesifik dari masing-masing individu, termasuk nomor WhatsApp atau akun Instagram yang dapat dihubungi. Informasi ini ditampilkan bersama dengan foto profil dan keterangan jabatan untuk mempermudah komunikasi.
* **"Data Terpusat" Problem:** Seluruh data kepengurusan disimpan secara khusus dalam satu file (yaitu `data_divisi.dart`) menggunakan struktur List berisi Map. Proses pembaruan data anggota kepengurusan menjadi mudah. Developer selanjutnya hanya perlu mengubah teks (string) pada file data, tanpa perlu merombak kode tampilan aplikasi sedikit pun.

## Screenshot Aplikasi

**Halaman Beranda (Homepage) :**

<img width="250" alt="home" src="https://github.com/user-attachments/assets/b42e8f74-f46b-4860-9cde-bf3c21400738" /> <img width="250" alt="home (tengah)" src="https://github.com/user-attachments/assets/81a6cccb-c97a-4d86-8fd4-ac101e7f1cff" /> <img width="250"  alt="home (bawah)" src="https://github.com/user-attachments/assets/61c9d336-5dee-468b-bb09-8833a63bf562" />





**Halaman Struktur Kepengurusan :**

<img width="250" alt="page 2" src="https://github.com/user-attachments/assets/869cf5b1-7adc-4978-8afe-076d70e57cf4" /> <img width="250" alt="page 2 (bawah)" src="https://github.com/user-attachments/assets/64c9f610-73bb-45ff-b17c-3c9d7e362923" />




 **Halaman Detail Pengurus :**
 (contoh salah satu halaman detail pengurus)
 
 <img width="250"  alt="page 3" src="https://github.com/user-attachments/assets/43e22940-d29d-4bce-8730-aa7ed0e0e350" />


## Cara Menjalankan Aplikasi
Pastikan komputer memiliki:
1. **Flutter SDK** yang sudah terinstal.
2. **Android Studio / VS Code** beserta extension **Flutter** dan **Dart**.
3. **Perangkat:** Emulator Android atau HP asli (dengan *USB Debugging* aktif).

Buka **Command Prompt (CMD)** atau **Terminal**, lalu pilih folder tempat untuk menyimpan proyek (contoh: di folder Documents).

1. **Masuk ke folder tujuan:**
   ```bash
   cd Documents
   
2. **Clone/Download repositori ini:**
  ```bash
  git clone https://github.com/rezasyahputra07/itc-the-seeker-2026-Fahreza_Syahputra.git
  ```
2. **Masuk ke Folder Proyek:**
   ```bash
   cd itc-the-seeker-2026-Fahreza_Syahputra

4. **Install Dependencies:**
   ```bash
   flutter pub get

6. **Jalankan Aplikasi:**
   ```bash
   flutter run
