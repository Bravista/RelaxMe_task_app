import 'package:flutter/material.dart';
import '../../../../domain/product.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {
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
