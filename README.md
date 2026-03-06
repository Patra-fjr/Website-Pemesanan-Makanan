# Website Pemesanan Makanan

Website pemesanan makanan berbasis web yang dibangun menggunakan framework CodeIgniter 4. Aplikasi ini memungkinkan pengguna untuk memesan makanan secara online dengan mudah dan efisien.

## 👥 Tim Pengembang

- [Patra-fjr](https://github.com/Patra-fjr)
- [Taufik Dermawan](https://github.com/OnlyFiksa)

## 🚀 Teknologi yang Digunakan

- **Framework**: CodeIgniter 4.7
- **PHP**: ^8.2
- **Database**: MySQL/MariaDB
- **Arsitektur**: MVC (Model-View-Controller)

## 📋 Fitur

- 🍔 Katalog menu makanan
- 🛒 Sistem pemesanan online
- 👤 Manajemen user
- 📊 Dashboard admin
- 💳 Proses pembayaran
- 📱 Responsive design

## 📁 Struktur Proyek

```
Website-Pemesanan-Makanan/
├── app/
│   ├── Config/          # Konfigurasi aplikasi
│   ├── Controllers/     # Controller
│   ├── Models/          # Model database
│   ├── Views/           # Template view
│   ├── Database/        # Migrations & Seeds
│   ├── Filters/         # HTTP Filters
│   ├── Helpers/         # Helper functions
│   ├── Language/        # File bahasa
│   └── Libraries/       # Custom libraries
├── public/              # Asset publik (CSS, JS, Images)
├── tests/               # Unit tests
├── writable/            # Log & cache files
└── vendor/              # Dependencies
```

## 🛠️ Instalasi

### Persyaratan Sistem

- PHP 8.2 atau lebih tinggi
- MySQL 5.7+ atau MariaDB
- Composer
- Web server (Apache/Nginx)

### Langkah Instalasi

1. **Clone repository**
   ```bash
   git clone https://github.com/Patra-fjr/Website-Pemesanan-Makanan.git
   cd Website-Pemesanan-Makanan
   ```

2. **Install dependencies**
   ```bash
   composer install
   ```

3. **Konfigurasi environment**
   ```bash
   cp env .env
   ```

4. **Edit file `.env`**
   - Sesuaikan konfigurasi database:
   ```env
   database.default.hostname = localhost
   database.default.database = nama_database
   database.default.username = username_db
   database.default.password = password_db
   database.default.DBDriver = MySQLi
   ```

5. **Jalankan migrasi database**
   ```bash
   php spark migrate
   ```

6. **Jalankan seeder (opsional)**
   ```bash
   php spark db:seed NamaSeeder
   ```

7. **Jalankan development server**
   ```bash
   php spark serve
   ```

8. **Buka browser**
   ```
   http://localhost:8080
   ```

## 🔧 Konfigurasi

### Database
Konfigurasi database dapat diatur di file `.env`:

```env
database.default.hostname = localhost
database.default.database = db_pemesanan_makanan
database.default.username = root
database.default.password = 
database.default.DBDriver = MySQLi
database.default.DBPrefix = 
```

### Base URL
Sesuaikan base URL di file `.env`:

```env
app.baseURL = 'http://localhost:8080/'
```

## 📝 Penggunaan

### Untuk Admin
1. Login ke halaman admin
2. Kelola menu makanan
3. Monitor pesanan masuk
4. Kelola data pelanggan

### Untuk Customer
1. Registrasi/Login
2. Browse menu makanan
3. Tambahkan ke keranjang
4. Checkout dan pembayaran

## 🧪 Testing

Jalankan unit test dengan PHPUnit:

```bash
composer test
```

atau

```bash
vendor/bin/phpunit
```

## 📦 Dependencies

### Production
- `codeigniter4/framework`: ^4.7

### Development
- `fakerphp/faker`: ^1.9
- `mikey179/vfsstream`: ^1.6
- `phpunit/phpunit`: ^10.5.16

## 🤝 Kontribusi

Kontribusi sangat diterima! Silakan:

1. Fork repository ini
2. Buat branch fitur baru (`git checkout -b feature/AmazingFeature`)
3. Commit perubahan (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

## 📄 Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).

## 📞 Kontak

- **Patra-fjr** - [@Patra-fjr](https://github.com/Patra-fjr)
- **Taufik Dermawan** - [@OnlyFiksa](https://github.com/OnlyFiksa)

## 🙏 Acknowledgments

- CodeIgniter 4 Framework
- Komunitas PHP Indonesia
- Semua kontributor yang telah membantu proyek ini

---

⭐ Jika proyek ini membantu Anda, jangan lupa untuk memberikan star!