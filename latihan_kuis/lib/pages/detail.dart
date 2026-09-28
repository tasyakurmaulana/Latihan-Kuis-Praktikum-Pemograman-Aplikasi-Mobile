import 'package:flutter/material.dart';
import '../models/bookModels.dart';

class DetailPage extends StatelessWidget {
  final BookModel _bookModel;
  const DetailPage({super.key, required this._bookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_bookModel.title), backgroundColor: Colors.blue),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Image.network(_bookModel.imageUrl),
              Text(_bookModel.title),
              Text(_bookModel.author),
              Text(_bookModel.description),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali ke Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
