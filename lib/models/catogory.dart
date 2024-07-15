import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ItemCategory {
  shoes,
  shirts,
  jacket,
  pants,
  eyewear,
  bag,
}

final selectedCategoryProvider = StateProvider((ref) => ItemCategory.shoes);

final categoryIconPathMapProvider = Provider<Map<ItemCategory, String>>((ref) {
  return {
    ItemCategory.shoes: 'assets/icons/shoes.png',
    ItemCategory.shirts: 'assets/icons/shirts.png',
    ItemCategory.jacket: 'assets/icons/jacket.png',
    ItemCategory.pants: 'assets/icons/pants.png',
    ItemCategory.eyewear: 'assets/icons/eyewear.png',
    ItemCategory.bag: 'assets/icons/bag.png',
  };
}); 

final categoryIconPathProvider = Provider.family((ref, ItemCategory category) {
  return ref.watch(categoryIconPathMapProvider)[category];
});