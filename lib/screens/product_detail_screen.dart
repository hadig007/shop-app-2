import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({Key? key}) : super(key: key);

  static const nameRoute = '/product-detail';

  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductDetailScreen(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
  // final argsRoute = ModalRoute.of(context)!.settings.arguments as String; // is the id


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Center(
          child: Text("Berhasil"),
        ),
      ),
    );
  }
}
