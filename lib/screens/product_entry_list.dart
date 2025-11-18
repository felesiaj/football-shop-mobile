import 'package:flutter/material.dart';
import 'package:football_shop/models/product_entry.dart';
import 'package:football_shop/widgets/left_drawer.dart';
import 'package:football_shop/screens/product_detail.dart';
import 'package:football_shop/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  final bool showMyProducts;
  const ProductEntryListPage({super.key, this.showMyProducts = false});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  late bool _showMyProducts; // Akan di-set di initState

  @override
  void initState() {
    super.initState();
    // Set nilai awal filter berdasarkan parameter yang dikirim
    _showMyProducts = widget.showMyProducts;
  }
  Future<List<ProductEntry>> fetchproduct(CookieRequest request) async {
    // TODO: Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000
    
    final response = await request.get('http://localhost:8000/json/');
    
    // Decode response to json format
    var data = response;
    
    // Convert json data to ProductEntry objects
    List<ProductEntry> listproduct = [];
    for (var d in data) {
      if (d != null) {
        listproduct.add(ProductEntry.fromJson(d));
      }
    }
    return listproduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
        backgroundColor: Colors.yellow,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchproduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'There are no product in football product yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              // --- PERBAIKAN: TAMBAHAN LOGIKA FILTER DI SINI ---
              
              // 1. Ambil data semua produk dari snapshot
              List<ProductEntry> allProducts = snapshot.data!;
              
              // 2. Siapkan variabel untuk produk yang akan ditampilkan
              List<ProductEntry> productsToShow;

              // 3. Cek apakah filter aktif
              if (_showMyProducts) {
                // Ambil username dari data login yang disimpan CookieRequest
                // Pastikan login_ajax di Django sudah mengembalikan 'username'
                String currentUsername = request.jsonData['username'];
                
                // Lakukan filtering
                productsToShow = allProducts
                    .where((product) => product.user == currentUsername) // Sesuaikan 'product.fields.user' dengan struktur modelmu
                    .toList();
              } else {
                // Jika filter mati, tampilkan semua
                productsToShow = allProducts;
              }

              return ListView.builder(
              itemCount: productsToShow.length,
              itemBuilder: (_, index) => ProductEntryCard(
                product: productsToShow[index],
                onTap: () {
                  // Navigate to news detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        product: productsToShow[index],
                      ),
                    ),
                  );
                },
              ),
            );
            }
          }
        },
      ),
    );
  }
}