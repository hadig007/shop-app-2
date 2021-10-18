import 'package:flutter/material.dart';
import 'package:shop_app_2/models/product.dart';
import 'package:shop_app_2/widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  // const ProductOverviewScreen({Key? key}) : super(key: key);

  final List<Product> loadedProducts = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}

