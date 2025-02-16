import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Bag'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined, size: 64.0, color: Colors.grey),
            SizedBox(height: 16.0),
            Text('Your shopping bag is empty', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('SHOP NOW'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
