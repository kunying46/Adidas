import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'SHOP',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Find products...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryButton('WOMEN'),
                _buildCategoryButton('MEN'),
                _buildCategoryButton('KIDS'),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              height: 200.0,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/promotions.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 16.0,
                    bottom: 16.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          color: Colors.white,
                          child: Text(
                            'CAMPUS 005',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          color: Colors.white,
                          child: Text('Bold street style'),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 90,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 90,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            _buildCategoryTile('SHOES', 'assets/icons/shoes.png'),
            _buildCategoryTile('CLOTHING', 'assets/icons/polo-shirt.png'),
            _buildCategoryTile('ACCESSORIES', 'assets/icons/hat.png'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildQuickLink('%', 'SALE'),
                _buildQuickLink('🤾🏼‍♂️', 'SPORT'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildCategoryTile(String title, String iconPath) {
    return ListTile(
      leading: Image.asset(
        iconPath,
        width: 24,
        height: 24,
        color: Colors.black,
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );
  }

  Widget _buildQuickLink(String symbol, String text) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(symbol, style: TextStyle(fontSize: 24.0)),
          SizedBox(height: 8.0),
          Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}