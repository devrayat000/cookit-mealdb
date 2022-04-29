// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealBase _$$_MealBaseFromJson(Map<String, dynamic> json) => _$_MealBase(
      idMeal: json['idMeal'] as String,
      strMealThumb: json['strMealThumb'] as String?,
      strMeal: json['strMeal'] as String,
    );

Map<String, dynamic> _$$_MealBaseToJson(_$_MealBase instance) =>
    <String, dynamic>{
      'idMeal': instance.idMeal,
      'strMealThumb': instance.strMealThumb,
      'strMeal': instance.strMeal,
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
      idMeal: json['idMeal'] as String,
      strMealThumb: json['strMealThumb'] as String?,
      strMeal: json['strMeal'] as String,
      strCategory: json['strCategory'] as String?,
      strYoutube: json['strYoutube'] as String?,
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      strArea: json['strArea'] as String?,
      strImageSource: json['strImageSource'] as String?,
      strInstructions: json['strInstructions'] as String,
      strSource: json['strSource'] as String?,
      strTags: json['strTags'] as String?,
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'idMeal': instance.idMeal,
      'strMealThumb': instance.strMealThumb,
      'strMeal': instance.strMeal,
      'strCategory': instance.strCategory,
      'strYoutube': instance.strYoutube,
      'dateModified': instance.dateModified?.toIso8601String(),
      'ingredients': instance.ingredients,
      'strArea': instance.strArea,
      'strImageSource': instance.strImageSource,
      'strInstructions': instance.strInstructions,
      'strSource': instance.strSource,
      'strTags': instance.strTags,
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
