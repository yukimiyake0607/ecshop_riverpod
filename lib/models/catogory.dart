import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ItemCategory {
  shoes,
  uniform,
  jacket,
  pant,
  glass,
  backpack,
}

final selectedCategoryProvider = StateProvider((ref) => ItemCategory.shoes);
