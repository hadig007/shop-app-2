import 'package:flutter/material.dart';
import 'package:shop_app_2/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({Key? key}) : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
          // header: Text("data"),
          footer: GridTileBar(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black87,
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_rounded,
                  color: Theme.of(context).accentColor),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).accentColor,
                )),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.nameRoute, arguments: id);
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
