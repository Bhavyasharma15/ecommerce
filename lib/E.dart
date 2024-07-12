import 'package:ecomm/PD.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(E());
}

class E extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Mens Western')),
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
    Product('Regular Fit Linen-bl...', 'assets/himanshi/shirt.jpeg', 4.8, 236, 169.00),
    Product('Loose Fit Sweatshirt', 'assets/himanshi/tshirtt.jpg', 4.7, 59, 187.00),
    Product('Loose Fit Hoodie', 'assets/himanshi/hoodie.jpg', 5.0, 29, 0.00), // Assuming free for demonstration
    Product('DryMove™ Track', 'assets/himanshi/jacket.jpg', 4.8, 163, 0.00),
    Product('DryMove™ Track', 'assets/himanshi/tshirt.jpg', 4.8, 163, 0.00),
    Product('DryMove™ Track', 'assets/himanshi/shirtt.jpg', 4.8, 163, 0.00),// Assuming free for demonstration
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.6, // Adjust this value to increase card size
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PD()
              ),
            );
          },

          child:ProductCard(product: products[index]),
        );


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
                Icon(Icons.star, color: Colors.yellow, size: 20), // Increase icon size
                SizedBox(width: 4),
                Text('${widget.product.rating} (${widget.product.ratingCount})', style: TextStyle(fontSize: 14)), // Increase text size
              ],
            ),
            Spacer(),
            Text('\$${widget.product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)), // Increase font size
          ],
        ),
      ),
    );
  }
}