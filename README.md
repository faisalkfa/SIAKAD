# Sistem Informasi Akademik SMP Negeri 35 Bandar Lampung

Sistem Informasi Akademik ini dikembangkan untuk memenuhi kebutuhan pengelolaan data akademik di SMP Negeri 35 Bandar Lampung. Sistem ini dibuat menggunakan framework Laravel, yang menawarkan kemudahan pengembangan serta keamanan aplikasi.

## Fitur Utama
- **Manajemen Data Siswa:** Input, update, dan penghapusan data siswa.
- **Manajemen Data Guru:** Input, update, dan penghapusan data guru.
- **Manajemen Jadwal Pelajaran:** Penjadwalan pelajaran untuk setiap kelas.
- **Manajemen Nilai:** Input dan pengelolaan nilai siswa.
- **Manajemen Kelas:** Pengaturan data kelas dan wali kelas.

## Teknologi yang Digunakan
- **Framework:** Laravel 10
- **Database:** MySQL
- **Frontend:** Blade Template, Bootstrap
- **Server Requirements:** PHP >= 8.1, Composer

## Instalasi

Ikuti langkah-langkah berikut untuk menjalankan aplikasi di lingkungan lokal:

1. **Clone repository ini:**
   ```bash
   git clone https://github.com/faisalkfa/SIAKAD.git
   ```

2. **Masuk ke direktori proyek:**
   ```bash
   cd SIAKAD
   ```

3. **Install dependensi:**
   ```bash
   composer install
   ```

4. **Salin file konfigurasi environment:**
   ```bash
   cp .env.example .env
   ```

5. **Konfigurasi file `.env`:**
   - Atur koneksi database (`DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD`).

6. **Generate application key:**
   ```bash
   php artisan key:generate
   ```

7. **Migrasi database:**
   ```bash
   php artisan migrate
   ```

8. **Jalankan server lokal:**
   ```bash
   php artisan serve
   ```

   Aplikasi akan dapat diakses melalui `http://localhost:8000`.

## Penggunaan
- Login sebagai admin untuk mengelola data akademik.
- Tambahkan data guru, siswa, kelas, dan jadwal melalui panel admin.
- Lihat dan kelola laporan hasil belajar sesuai kebutuhan.

## Kontribusi
Kontribusi sangat diterima! Silakan fork repository ini dan ajukan pull request untuk penambahan fitur atau perbaikan bug.

## Lisensi
Proyek ini dibuat oleh Faisal Khairul Fasha.

---

**Catatan:**
Pastikan server lokal Anda memenuhi semua persyaratan Laravel, termasuk modul PHP yang diperlukan (seperti `openssl`, `pdo`, `mbstring`, dll).
