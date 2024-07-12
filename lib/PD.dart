import 'package:flutter/material.dart';

void main() {
  runApp(PD());
}

class PD extends StatefulWidget {
  @override
  _PDState createState() => _PDState();
}

class _PDState extends State<PD> {
  bool _isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Product Details',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Product Details'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset("assets/image/shirt.jpeg",fit: BoxFit.cover, height: 340, width: 340,), // Replace with your image
                  Text(
                    'BLack shirt',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('\ ₹.3000 \n',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Loose Fit Printed T-shirt. \n'
                        'Crafted from premium cotton for maximum comfort, this relaxed-fit tee features.\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text('Colors: '),
                      Text('   Black', style: TextStyle(fontSize: 16)),
                      Text('   Blue', style: TextStyle(fontSize: 16)),
                      Text('   White', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Size: '),
                      Text('       XS', style: TextStyle(fontSize: 16)),
                      Text('           S', style: TextStyle(fontSize: 16)),
                      Text('          M', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150, // Set the width
                        height: 55, // Set the height
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black, // Set the background color
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)), // Set the shape
                          ),
                          onPressed: () {
                            // Add to cart logic
                          },
                          child:
                          Text('ADD TO CART', style: TextStyle(fontSize: 14, color: Colors.white)), // Increase the font size
                        ),
                      ),
                      Container(
                        width: 130, // Set the width
                        height: 55, // Set the height
                        child: ElevatedButton(
                          onPressed: () {
                            // Buy now logic
                          },
                          child: Text('BUY NOW', style: TextStyle(fontSize: 14,color: Colors.black )), // Increase the font size
                        ),
                      ),
                      IconButton(
                        icon: Icon(_isWishlisted ? Icons.favorite : Icons.favorite_border,color: Colors.red,),
                        onPressed: () {
                          setState(() {
                            _isWishlisted = !_isWishlisted;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ),
        );
    }
}
