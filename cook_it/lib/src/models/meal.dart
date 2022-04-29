import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.g.dart';
part 'meal.freezed.dart';

abstract class IMealBase {
  late final String idMeal;
  late final String? strMealThumb;
  late final String strMeal;
}

@freezed
class MealBase with _$MealBase {
  @Implements<IMealBase>()
  const factory MealBase({
    required String idMeal,
    required String? strMealThumb,
    required String strMeal,
  }) = _MealBase;

  factory MealBase.fromJson(Map<String, Object?> json) =>
      _$MealBaseFromJson(json);
}

abstract class IMealFromCategory extends IMealBase {
  late final String? strCategory;
  late final String? strYoutube;
}

@freezed
class MealFromCategory with _$MealFromCategory {
  @Implements<IMealFromCategory>()
  const factory MealFromCategory({
    required String idMeal,
    required String? strMealThumb,
    required String strMeal,
    required String? strCategory,
    required String? strYoutube,
  }) = _MealFromCategory;

  factory MealFromCategory.fromJson(Map<String, dynamic> json) =>
      _$MealFromCategoryFromJson(json);
}

abstract class IMeal extends IMealFromCategory {
  late final DateTime? dateModified;
  late final List<Ingredient> ingredients;
  late final String? strArea;
  late final String? strImageSource;
  late final String strInstructions;
  late final String? strSource;
  late final String? strTags;
}

@freezed
class Meal with _$Meal {
  @Implements<IMeal>()
  const factory Meal({
    required String idMeal,
    required String? strMealThumb,
    required String strMeal,
    required String? strCategory,
    required String? strYoutube,
    required DateTime? dateModified,
    required List<Ingredient> ingredients,
    required String? strArea,
    required String? strImageSource,
    required String strInstructions,
    required String? strSource,
    required String? strTags,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String item,
    required String measure,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
