import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 64.0, color: Colors.grey),
            SizedBox(height: 16.0),
            Text('Your favorites will appear here', style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}