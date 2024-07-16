import 'package:ecshop_riverpod/models/catogory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeItemCategories extends ConsumerWidget {
  const HomeItemCategories({super.key});

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
                  child: InkWell(
                    onTap: () => {
                      ref.read(selectedCategoryProvider.notifier).state =
                          category,
                    },
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
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _CategoryImage extends ConsumerWidget {
  const _CategoryImage({super.key, required this.category});
  final ItemCategory category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imagePath = ref.watch(categoryIconPathProvider(category));
    return (imagePath!.isEmpty)
        ? const Text('No Image')
        : Image.asset(
            imagePath,
            width: 60,
            height: 60,
          );
  }
}
