import 'package:ecshop_riverpod/screens/home_screen/home_header.dart';
import 'package:ecshop_riverpod/screens/home_screen/home_item_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sport Shops'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          HomeHeader(),
          HomeItemCategories(),
        ],
      ),
    );
  }
}
