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
