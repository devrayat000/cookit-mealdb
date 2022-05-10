// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealBase _$$_MealBaseFromJson(Map<String, dynamic> json) => _$_MealBase(
      id: json['id'] as String,
      thumb: json['thumb'] as String?,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_MealBaseToJson(_$_MealBase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumb': instance.thumb,
      'title': instance.title,
    };

_$_MealBaseResponse _$$_MealBaseResponseFromJson(Map<String, dynamic> json) =>
    _$_MealBaseResponse(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => MealBase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealBaseResponseToJson(_$_MealBaseResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      id: json['id'] as String,
      thumb: json['thumb'] as String?,
      title: json['title'] as String,
      category: json['category'] as String?,
      youtube: json['youtube'] as String?,
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      area: json['area'] as String?,
      imageSource: json['imageSource'] as String?,
      instructions: json['instructions'] as String?,
      source: json['source'] as String?,
      tags: json['tags'] as String?,
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'thumb': instance.thumb,
      'title': instance.title,
      'category': instance.category,
      'youtube': instance.youtube,
      'dateModified': instance.dateModified?.toIso8601String(),
      'ingredients': instance.ingredients,
      'area': instance.area,
      'imageSource': instance.imageSource,
      'instructions': instance.instructions,
      'source': instance.source,
      'tags': instance.tags,
    };

_$_MealResponse _$$_MealResponseFromJson(Map<String, dynamic> json) =>
    _$_MealResponse(
      meal: Meal.fromJson(json['meal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MealResponseToJson(_$_MealResponse instance) =>
    <String, dynamic>{
      'meal': instance.meal,
    };

_$_MealsResponse _$$_MealsResponseFromJson(Map<String, dynamic> json) =>
    _$_MealsResponse(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealsResponseToJson(_$_MealsResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      item: json['item'] as String,
      measure: json['measure'] as String,
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'item': instance.item,
      'measure': instance.measure,
    };
