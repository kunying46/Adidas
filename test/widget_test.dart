import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:adidas/main.dart';

void main() {
  testWidgets('App should build without errors', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('SHOP'), findsOneWidget);
  });
}