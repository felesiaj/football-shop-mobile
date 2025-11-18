# Football Shop
**Felesia Junelus - 2406354152 - PBP C**  

<details>
<summary>TUGAS 7 PBP</summary>

## TUGAS 7 PBP
**1. Apa itu widget tree pada Flutter dan bagaimana hubungan parent-child bekerja antar widget?**  
Widget tree adalah struktur hierarki yang menggambarkan hubungan antar widget di Flutter. Widget parent bisa berisi satu atau lebih widget child. Parent mengatur tata letak, posisi, dan gaya dari widget child di dalamnya. Misalnya, di kode ini `Column` berisi beberapa `Row`, `Text`, dan `GridView` sebagai child.

**2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.**  
1. `MaterialApp` → Widget utama aplikasi yang mengatur tema, judul, dan halaman awal.

2. `Scaffold` → Menyediakan struktur dasar halaman (AppBar, body, dan SnackBar).

3. `AppBar` → Bagian atas halaman untuk menampilkan judul “Football Shop”.

4. `Padding` → Memberikan jarak di sekeliling body agar tidak mepet ke tepi layar.

5. `Column` → Menyusun widget secara vertikal.

6. `Row` → Menyusun widget secara horizontal (digunakan untuk InfoCard).

7. `Center` → Menempatkan widget di tengah halaman.

8. `GridView.count` → Menampilkan daftar tombol (ItemCard) dalam bentuk grid tiga kolom.

9. `Card` → Membuat tampilan berbentuk kartu dengan bayangan.

10. `Container` → Mengatur ukuran, padding, dan tata letak isi di dalam widget.

11. `Text` → Menampilkan teks seperti nama, NPM, kelas, dan label tombol.

12. `Icon` → Menampilkan ikon di setiap tombol.

13. `Material` → Memberikan efek material design pada widget ItemCard.

14. `InkWell` → Memberikan efek klik (ripple effect) dan menangani aksi ketika ditekan.

15. `SnackBar` → Menampilkan pesan singkat ketika tombol ditekan.

16. `SizedBox` → Memberikan jarak vertikal antar elemen.

**3. Apa fungsi dari widget MaterialApp? Mengapa sering digunakan sebagai widget root?** 
MaterialApp adalah widget utama yang membungkus seluruh aplikasi berbasis Material Design.
Widget ini mengatur tema, warna, dan halaman awal (home).
Biasanya digunakan sebagai root karena menjadi fondasi bagi semua widget di bawahnya.

**4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?**  
StatelessWidget tidak menyimpan data yang bisa berubah. UI-nya tetap selama aplikasi berjalan.

StatefulWidget bisa menyimpan dan mengubah state sehingga tampilannya bisa berubah saat dijalankan.
Pada kode ini, `MyHomePage`, `ItemCard`, dan `InfoCard` semuanya memakai StatelessWidget karena tampilannya tidak bergantung pada data yang berubah-ubah.  

**5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?**  
`BuildContext` adalah objek yang berisi informasi posisi widget di dalam widget tree.
Context penting karena dipakai untuk mengakses widget parent, seperti ketika menampilkan `SnackBar` dengan `ScaffoldMessenger.of(context)`.
Biasanya `BuildContext` digunakan di dalam metode `build()` untuk membangun UI berdasarkan posisi widget tersebut.  

**6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".**  
Hot reload memperbarui kode dan langsung menampilkan perubahan tanpa menghapus state aplikasi.

Hot restart menjalankan ulang seluruh aplikasi dari awal dan menghapus state.
Hot reload digunakan saat ingin melihat perubahan cepat pada tampilan atau logika tanpa kehilangan data sementara.

</details>

<details>
<summary>TUGAS 8 PBP</summary>

## TUGAS 8 PBP

**1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?**

`Navigator.push()` berfungsi untuk menambahkan halaman baru di atas halaman saat ini ke dalam navigation stack. Artinya, ketika pengguna berpindah ke halaman baru, mereka masih bisa kembali ke halaman sebelumnya menggunakan tombol back.

Sedangkan `Navigator.pushReplacement()` akan mengganti halaman saat ini dengan halaman baru, sehingga halaman sebelumnya dihapus dari stack dan pengguna tidak bisa kembali ke halaman tersebut.

Contoh penggunaan di aplikasi Football Shop:

`Navigator.push()` digunakan saat berpindah dari halaman utama ke halaman detail produk, karena pengguna mungkin ingin kembali ke halaman utama setelah melihat detail.

`Navigator.pushReplacement()` digunakan setelah proses login atau logout, karena tidak diperlukan kembali ke halaman login setelah berhasil masuk ke aplikasi.

**2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?**

Dalam aplikasi Football Shop, struktur halaman dibangun secara konsisten dengan memanfaatkan widget hierarchy sebagai berikut:

- Scaffold: digunakan sebagai kerangka utama untuk setiap halaman, menyediakan struktur dasar seperti AppBar, body, dan Drawer.

- AppBar: menampilkan judul halaman dan ikon navigasi yang sama di seluruh aplikasi, menjaga konsistensi tampilan antarhalaman.

- Drawer: digunakan untuk navigasi antarhalaman seperti Home, Add Product, dan Product List, sehingga pengguna dapat dengan mudah berpindah tanpa kembali ke halaman utama.

Dengan struktur ini, seluruh halaman memiliki tata letak dan pengalaman pengguna yang seragam.

**3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.**

- Padding  
Digunakan untuk memberi jarak antar elemen agar tampilan tidak terlalu rapat dan lebih nyaman dilihat.
Contoh: Pada halaman form penambahan produk, setiap TextFormField dibungkus dengan Padding agar tidak menempel di tepi layar.

- SingleChildScrollView  
Membuat halaman dapat di-scroll ketika kontennya terlalu panjang.
Contoh: Digunakan pada form tambah produk agar pengguna tetap bisa mengakses semua input meskipun layar kecil atau keyboard muncul.

- ListView  
Cocok untuk menampilkan daftar elemen yang jumlahnya dinamis, seperti daftar produk.
Contoh: Halaman Product List menampilkan semua produk menggunakan ListView.builder() agar tampilan tetap efisien meskipun jumlah produk banyak.

**4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?**  

Untuk menjaga identitas visual Football Shop, tema warna aplikasi disesuaikan dengan warna khas brand toko. Pada aplikasi Football Shop yang saya implementasi, saya menggunakan warna biru standar dari Flutter sebagai warna utama yang biasanya digunakan untuk elemen-elemen seperti AppBar, tombol utama, dan ikon navigasi. Kemudian saya gunakan warna `Colors.blueAccent[400]` yaitu warna biru yang lebih cerah daripada biru utama sebagai warna sekunder yang biasanya digunakan untuk elemen interaktif seperti tombol aksi, highlight, dan ikon aktif.

Implementasi ini dapat dilihat di `main.dart` pada bagian `MaterialApp`.  
```
theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.blueAccent[400]),
      ),
```

</details>

<details>
<summary>TUGAS 9 PBP</summary>

## TUGAS 9 PBP

**1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?**

Kita perlu membuat model Dart untuk mengubah data JSON yang tidak terstruktur menjadi objek Dart yang memiliki tipe data yang jelas (strongly-typed).

Validasi Tipe & Null-Safety: Model memastikan bahwa data yang kita gunakan memiliki tipe yang benar (misalnya price harus int, bukan String). Dart akan memberikan peringatan saat compile-time jika kita mencoba mengakses properti yang salah atau memperlakukan tipe data secara keliru. Tanpa model, kesalahan ini baru akan muncul saat aplikasi dijalankan (runtime error), yang bisa menyebabkan aplikasi crash.

Maintainability (Kemudahan Pemeliharaan): Dengan model, struktur data terpusat di satu file. Jika API berubah (misalnya nama field JSON berubah), kita hanya perlu memperbaikinya di satu file model saja, tidak perlu menelusuri seluruh kode aplikasi untuk mengganti key string satu per satu.

Konsekuensi tanpa Model: Jika kita hanya menggunakan Map<String, dynamic>, kita kehilangan fitur autocomplete di IDE, rentan terhadap kesalahan pengetikan (typo) pada key (misal data['nama'] vs data['name']), dan kode menjadi sulit dibaca serta dikelola seiring bertambahnya kompleksitas aplikasi.

**2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.**

Package http: Berfungsi untuk melakukan permintaan HTTP standar (GET, POST, PUT, DELETE) ke server. Dalam tugas ini, http digunakan (secara langsung atau di balik layar) untuk mengirim data formulir registrasi ke endpoint Django. http bersifat stateless, artinya ia tidak menyimpan informasi sesi antar permintaan secara otomatis.

Package CookieRequest (dari pbp_django_auth): Berfungsi sebagai wrapper (pembungkus) di atas protokol HTTP yang dirancang khusus untuk berinteraksi dengan backend Django.

Perbedaan Utama: Perbedaan kuncinya ada pada manajemen sesi/cookies.

http tidak menyimpan cookies secara otomatis. Jika kita login menggunakan http, kita harus menangkap cookie sesi secara manual dan menyertakannya di header setiap permintaan berikutnya.

CookieRequest secara otomatis menyimpan session cookies yang diterima dari Django saat login dan menyertakannya kembali pada setiap permintaan berikutnya (GET/POST). Ini sangat penting agar Django mengenali pengguna yang sedang login (stateful session).

**3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**

Instance CookieRequest perlu dibagikan (biasanya menggunakan Provider) karena objek ini menyimpan state autentikasi (seperti cookie sesi dan status login).

Jika kita membuat instance CookieRequest baru di setiap halaman atau widget:

Informasi sesi yang didapat saat login akan hilang.

Setiap halaman akan dianggap sebagai "pengguna baru" yang belum login oleh server Django.

Kita tidak bisa mengakses endpoint yang membutuhkan autentikasi (seperti melihat daftar item milik pengguna atau menambah item) karena cookie sesi tidak terbawa.

Dengan membagikan satu instance yang sama (Singleton pattern via Provider), semua widget di aplikasi dapat mengakses sesi login yang konsisten.

**4.  Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?**

Agar Flutter (terutama di emulator Android) bisa berkomunikasi dengan Django di local computer, diperlukan beberapa konfigurasi:

- 10.0.2.2 pada ALLOWED_HOSTS:

Emulator Android menjalankan virtual machine sendiri. localhost di dalam emulator merujuk ke emulator itu sendiri, bukan komputer kita. 10.0.2.2 adalah IP khusus alias yang disediakan Android untuk mengakses localhost komputer host. Kita perlu menambahkannya ke ALLOWED_HOSTS di Django agar Django mau menerima request dari IP ini.

- CORS (Cross-Origin Resource Sharing):

Diperlukan terutama jika mengakses lewat browser (Flutter Web) atau jika klien dianggap berbeda origin. Ini memberi tahu server Django untuk mengizinkan permintaan resource dari domain/port yang berbeda.

- Pengaturan SameSite dan Secure pada Cookie:

Agar cookie sesi dapat dikirim dan diterima lintas domain (atau antara mobile app dan server lokal), pengaturan cookie seperti SESSION_COOKIE_SAMESITE = 'None' dan CSRF_COOKIE_SAMESITE = 'None' sering diperlukan (terutama di Chrome/Web), atau pengaturan default Django mungkin memblokir cookie tersebut.

- Izin Akses Internet di Android:

Menambahkan <uses-permission android:name="android.permission.INTERNET" /> di AndroidManifest.xml. Tanpa ini, sistem operasi Android akan memblokir aplikasi untuk melakukan koneksi jaringan apa pun demi keamanan.

Jika tidak dikonfigurasi dengan benar: Aplikasi Flutter akan mengalami error seperti Connection Refused, SocketException, atau 403 Forbidden saat mencoba login atau mengambil data, karena server menolak koneksi atau browser memblokir transfer data.

**5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**

1. Input: Pengguna memasukkan data (misal: nama produk, harga) melalui TextFormField di Flutter.

2. Validasi & Serialisasi: Saat tombol simpan ditekan, Flutter memvalidasi input. Jika valid, data dikonversi menjadi format JSON menggunakan jsonEncode.

3. Pengiriman (POST): Flutter mengirim HTTP POST request berisi data JSON tersebut ke endpoint Django (misal: /create-flutter/ atau /add-product-ajax/) menggunakan CookieRequest.

4. Pemrosesan di Django: View Django menerima request, mem-parse JSON, membuat objek model baru, dan menyimpannya ke database. Django mengembalikan respons JSON (misal: status sukses).

5. Fetching (GET): Di halaman daftar produk, Flutter mengirim HTTP GET request ke endpoint JSON Django (misal: /json/).

6. Deserialisasi: Django merespons dengan data JSON berisi daftar produk. Flutter menerima JSON ini dan mengubahnya kembali menjadi objek Dart (List of Product) menggunakan Product.fromJson.

7. Menampilkan: Widget FutureBuilder atau ListView di Flutter menggunakan objek Dart tersebut untuk merender UI dan menampilkan data ke layar.

**6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

1. Register:  
Pengguna input data di RegisterPage.  
Flutter mengirim data via http.post ke endpoint registrasi Django.  
Django membuat User baru di database.  
Jika sukses, pengguna diarahkan ke halaman Login.

2. Login:  
Pengguna input username/password di LoginPage.  
Flutter memanggil request.login() ke endpoint login Django.  
Django memverifikasi kredensial. Jika valid, Django membuat session di server dan mengirimkan session ID lewat cookie di header respons.  
CookieRequest di Flutter menangkap dan menyimpan cookie tersebut secara otomatis. State loggedIn menjadi true.  
Pengguna diarahkan ke halaman utama (MyHomePage).

3. Logout:  
Pengguna menekan tombol Logout. 
Flutter memanggil request.logout() ke endpoint logout Django, menyertakan cookie sesi yang tersimpan.  
Django menghapus sesi di server.  
CookieRequest di Flutter menghapus cookie yang disimpan dan mereset state loggedIn.  
Pengguna diarahkan kembali ke LoginPage.

**7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!**
Implementasi dimulai dengan konfigurasi backend Django agar dapat berkomunikasi dengan Flutter. Saya menambahkan library django-cors-headers dan mengonfigurasi settings.py dengan menambahkan IP 10.0.2.2 ke ALLOWED_HOSTS serta mengaktifkan izin kredensial CORS. Selanjutnya, saya membuat views baru (login_ajax, register_ajax, logout_ajax) di views.py yang mengembalikan respons JSON dan menambahkan data username pada respons login untuk keperluan fitur penyaringan (filtering) di sisi klien.

Di sisi frontend Flutter, saya menginstal package provider, pbp_django_auth, dan http, serta menambahkan izin internet pada AndroidManifest.xml. Untuk manajemen state login, saya membungkus root widget aplikasi dengan Provider yang menyediakan satu instance CookieRequest ke seluruh aplikasi. Fitur autentikasi kemudian dibangun dengan membuat halaman LoginPage dan RegisterPage yang mengirim data formulir ke endpoint Django yang telah disiapkan.

Terakhir, saya mengintegrasikan data produk dengan membuat model Dart Product untuk memetakan JSON dari Django. Saya membuat halaman ProductEntryListPage yang mengambil data menggunakan FutureBuilder dan menampilkan daftar produk. Fitur filtering "My Products" diimplementasikan dengan menyaring data produk berdasarkan kesamaan user produk dengan username pengguna yang sedang login. Form tambah produk juga diperbarui agar mengirim data ke server menggunakan request POST, dan navigasi pada halaman utama disesuaikan untuk mengakses fitur-fitur tersebut.

</details>