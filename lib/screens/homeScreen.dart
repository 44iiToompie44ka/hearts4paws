import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace Sample',
      home: MarketplaceScreen(),
    );
  }
}

class MarketplaceScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', description: 'Description 1', price: 19.99),
    Product(name: 'Product 2', description: 'Description 2', price: 29.99),
    Product(name: 'Product 3', description: 'Description 3', price: 39.99),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace'),
      ),
      
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(product.name),
        subtitle: Text(product.description),
        trailing: Text('\$${product.price.toStringAsFixed(2)}'),
        onTap: () {
          // Handle product tap, e.g., navigate to product details screen
          // You can use Navigator to push a new screen
          // Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(product: product)));
        },
      ),
    );
  }
}
