import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, size: 64.0, color: Colors.grey),
            SizedBox(height: 16.0),
            Text('Search for products', style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}