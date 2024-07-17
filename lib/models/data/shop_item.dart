import 'dart:convert' show jsonDecode;
import 'package:ecshop_riverpod/models/catogory.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecshop_riverpod/models/data/item/item.dart';

final shopItemProvider = FutureProvider((ref) async {
  final data = await rootBundle.loadString('lib/mock/mock.json');
  final json = (await jsonDecode(data) as List).cast<Map<String, dynamic>>();
  final items = json.map(Item.fromJson).toList();
  return items;
});

final shopItemIdsForSelectedCategoryProvider = Provider((ref) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  return items.whenData((items) => items
      .where((item) => item.category == selectedCategory)
      .map((item) => item.id)
      .toList());
});
