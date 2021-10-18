import 'package:flutter/material.dart';
import 'package:shop_app_2/providers/products_providers.dart';
import 'package:shop_app_2/screens/product_detail_screen.dart';
import 'package:shop_app_2/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> Products(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.deepOrange,
          primarySwatch: Colors.purple,
        ),
        home: ProductOverviewScreen(),
        initialRoute: '/',
        routes: {
          // '/' : (_)=>ProductOverviewScreen()
          ProductDetailScreen.nameRoute : (_)=> ProductDetailScreen()
        },
      ),
    );
  }
}
