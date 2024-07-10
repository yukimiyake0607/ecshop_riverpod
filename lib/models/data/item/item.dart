import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  factory Item({
    required String name,
    required String imageUrl,
    required String description,
    required String category,
    required List<String> options,
    required int price,
  }) = _Item;
}