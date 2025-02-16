import 'package:flutter/material.dart';

class AdiclubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('adiClub'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/adiclub.png', width: 80.0),
            SizedBox(height: 24.0),
            Text('JOIN ADICLUB. GET REWARDED TODAY.',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'Create an account to earn points and get exclusive access to products, events, and more.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('JOIN FOR FREE'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {},
              child: Text('LOG IN', style: TextStyle(color: Colors.black)),
            ),
            
            // Promotional banner from image 2
            SizedBox(height: 32.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/images/adidas_shoe.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}