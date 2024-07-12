import 'package:flutter/material.dart';

void main() {
  runApp(E());
}

class E extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('kitchen essentials')),
        body: ProductGrid(),

      ),
    );
  }
}

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}


class _ProductGridState extends State<ProductGrid> {
  final List<Product> products = [
    Product('Regular Fit Linen-bl', 'assets/images/pr1.jfif', 4.8, 236, 169.00),
    Product('Loose Fit Sweatshirt', 'assets/images/pr2.jfif', 4.7, 59, 187.00),
    Product('Loose Fit Hoodie', 'assets/images/pr3.jfif', 5.0, 29, 0.00), // Assuming free for demonstration
    Product('DryMove™ Track', 'assets/images/f3.jfif', 4.8, 163, 0.00),
    Product('DryMove™ Track', 'assets/images/pr4.jpg', 4.8, 163, 0.00),
    Product('DryMove™ Track', 'assets/images/pr5.jfif', 4.8, 163, 0.00),// Assuming free for demonstration
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.57, // Adjust this value to increase card size
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}

class Product {
  final String title;
  final String imageUrl;
  final double rating;
  final int ratingCount;
  final double price;

  Product(this.title, this.imageUrl, this.rating, this.ratingCount, this.price);
}

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;
  String currencySymbol = '₹';// Add this to track the favorite state

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.product.imageUrl,
              fit: BoxFit.cover,
              height: 180, // Increase image height
              width: double.infinity,
            ),
            SizedBox(height: 8), // Add spacing
            Text(
              widget.product.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // Increase font size
            ),
            SizedBox(height: 4), // Add spacing
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow.shade600, size: 20),
                SizedBox(width: 3.0),
                IconButton(
                  icon: _isFavorite ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                ),
                SizedBox(width: 4),
                Text('${widget.product.rating} (${widget.product.ratingCount})', style: TextStyle(fontSize: 14)), // Increase text size
              ],
            ),
            Spacer(),
            Text('$currencySymbol${widget.product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)), // Increase font size
          ],
        ),
      ),
    );
  }
}