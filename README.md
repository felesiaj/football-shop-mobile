# Football Shop
**Felesia Junelus - 2406354152 - PBP C**  

## Daftar Isi
- [README.md Tugas 7](#tugas-7-pbp)
- [README.md Tugas 8](#tugas-8-pbp)

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