import 'package:flutter/material.dart';

import 'detail.dart';
import '../models/bookModels.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Buku"),
      ),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bookList[index].title),
            subtitle: Text(bookList[index].author),
            leading: Image.network(bookList[index].imageUrl),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(bookModel: bookList[index]),
                ),
              );
            },
          );
        },
      )
    );
  }
}
