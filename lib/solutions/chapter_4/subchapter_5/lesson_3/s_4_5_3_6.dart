import 'package:flutter/material.dart';

class Product {
  String name;
  double price;

  Product({required this.name, required this.price});
}

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {

    final products = [
      Product(name: 'Produkt 1', price: 10.0),
      Product(name: 'Produkt 2', price: 20.0),
      Product(name: 'Produkt 3', price: 30.0),
      Product(name: 'Produkt 4', price: 40.0),
      Product(name: 'Produkt 5', price: 50.0),
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: Text(products[index].name),
          subtitle: Text('Preis: ${products[index].price}'),
        );
      },
    );
  }
}
