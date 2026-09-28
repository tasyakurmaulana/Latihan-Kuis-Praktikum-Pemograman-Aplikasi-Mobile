
import 'package:flutter/material.dart';
import '../models/bookModels.dart';

class DetailPage extends StatelessWidget {
  final BookModel _bookModel;

  const DetailPage({super.key, required this._bookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bookModel.title),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cover Buku
              Center(
                child: Image.network(
                  _bookModel.imageUrl,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 20),

              // Judul
              Text(
                _bookModel.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Penulis
              Text(
                'Penulis: ${_bookModel.author}',
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 16),

              // Informasi buku
              Text(
                'Informasi Buku',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text('Tahun Terbit: ${_bookModel.year}'),
              Text('Genre: ${_bookModel.genre}'),
              Text('Penerbit: ${_bookModel.publisher}'),
              Text('Jumlah Halaman: ${_bookModel.pages} halaman'),
              Text('Rating: ${_bookModel.rating} / 5'),

              const SizedBox(height: 20),

              // Deskripsi / Sinopsis
              const Text(
                'Deskripsi / Sinopsis',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                _bookModel.description,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 24),

              // Tombol kembali
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali ke Home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}