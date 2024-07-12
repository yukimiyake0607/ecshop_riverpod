import 'dart:convert' show jsonDecode;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecshop_riverpod/models/data/item/item.dart';

final shopItemProvider = FutureProvider((ref) async {
  final data = await rootBundle.loadString('lib/mock/mock.json');
  final json = (await jsonDecode(data) as List).cast<Map<String, dynamic>>();
  // ↑ここまで理解
  final items = json.map(Item.fromJson).toList();
  return items;
});
