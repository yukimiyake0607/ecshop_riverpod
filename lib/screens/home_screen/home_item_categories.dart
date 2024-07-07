import 'package:flutter/material.dart';

class HomeItemCategories extends StatelessWidget {
  const HomeItemCategories({super.key});

  static const List<String> categories = [
    'shoes',
    'bag',
    'eyewear',
    'pants',
    'shirts',
    'jacket',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map(
              (category) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/$category.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
