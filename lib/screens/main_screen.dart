import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (provider.errorMessage != null) {
            return Center(child: Text(provider.errorMessage!));
          } else {
            return ListView.builder(
              itemCount: provider.products.length,
              itemBuilder: (context, index) {
                final product = provider.products[index];
                return ListTile(
                  leading: Image.network(product.imageUrl),
                  title: Text(product.name),
                  subtitle: Text(product.description),
                );
              },
            );
          }
        },
      ),
    );
  }
}
