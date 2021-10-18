import 'package:flutter/material.dart';
import 'package:shop_app_2/providers/products_providers.dart';
// import 'package:shop_app_2/models/product.dart';
import 'package:shop_app_2/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  // const ProductsGrid({
  //   Key? key,
  //   required this.loadedProducts,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Products>(context);
    final productsData = data.items;
    return GridView.builder(
      itemCount: productsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2),
      itemBuilder: (context, index) => ProductItem(productsData[index].id,
          productsData[index].title, productsData[index].imageUrl),
      padding: const EdgeInsets.all(15.0),
    );
  }
}
