// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      category: $enumDecode(_$ItemCategoryEnumMap, json['category']),
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'category': _$ItemCategoryEnumMap[instance.category]!,
      'options': instance.options,
      'price': instance.price,
    };

const _$ItemCategoryEnumMap = {
  ItemCategory.shoes: 'shoes',
  ItemCategory.shirts: 'shirts',
  ItemCategory.jacket: 'jacket',
  ItemCategory.pants: 'pants',
  ItemCategory.eyewear: 'eyewear',
  ItemCategory.bag: 'bag',
};
