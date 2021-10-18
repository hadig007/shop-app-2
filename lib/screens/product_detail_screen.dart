import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_2/providers/products_providers.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({Key? key}) : super(key: key);

  static const nameRoute = '/product-detail';

  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductDetailScreen(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final argsRoute =
        ModalRoute.of(context)!.settings.arguments as String; // is the id
    final productDetail = Provider.of<Products>(context)
        .items
        .firstWhere((element) => element.id == argsRoute);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(productDetail.title),
        ),
        body: Center(
          child: Text("Berhasil"),
        ),
      ),
    );
  }
}
