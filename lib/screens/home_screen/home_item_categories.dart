import 'package:ecshop_riverpod/models/catogory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeItemCategories extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);
    return SliverToBoxAdapter(
      child: Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: ItemCategory.values
              .map(
                (category) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (selectedCategory == category)
                          ? Theme.of(context).highlightColor
                          : Theme.of(context).canvasColor,
                    ),
                    width: 80,
                    height: 80,
                    child: Center(
                      child: Image.asset(
                        'assets/icons/${category.name}.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
