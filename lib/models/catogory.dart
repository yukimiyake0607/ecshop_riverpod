import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum ItemCategory {
  @JsonValue('shoes')
  shoes,
  @JsonValue('shirts')
  shirts,
  @JsonValue('jacket')
  jacket,
  @JsonValue('pants')
  pants,
  @JsonValue('eyewear')
  eyewear,
  @JsonValue('bag')
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