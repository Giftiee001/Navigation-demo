import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(const RwandaFoodApp());
}

/// Root of the app. Wires the theme and sets the product list as the home page.
class RwandaFoodApp extends StatelessWidget {
  const RwandaFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rwanda Food Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Blue AppBar to match the assignment screenshots.
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF3F6FB5),
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3F6FB5)),
        useMaterial3: true,
      ),
      home: const ProductListScreen(),
    );
  }
}
