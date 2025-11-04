# Football Shop
**Felesia Junelus - 2406354152 - PBP C**  

## Daftar Isi
- [README.md Tugas 7](#tugas-7-pbp)

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