import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.g.dart';
part 'meal.freezed.dart';

@freezed
class MealBase with _$MealBase {
  // @With<IMealBase>()
  const factory MealBase({
    required String id,
    required String? thumb,
    required String title,
  }) = _MealBase;

  factory MealBase.fromJson(Map<String, dynamic> json) =>
      _$MealBaseFromJson(json);
}

@freezed
class MealBaseResponse with _$MealBaseResponse {
  const factory MealBaseResponse({
    required List<MealBase> meals,
  }) = _MealBaseResponse;

  factory MealBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$MealBaseResponseFromJson(json);
}

@freezed
class Meal with _$Meal {
  // @With<IMeal>()
  const factory Meal({
    required String id,
    required String? thumb,
    required String title,
    required String? category,
    required String? youtube,
    required DateTime? dateModified,
    required List<Ingredient> ingredients,
    required String? area,
    required String? imageSource,
    required String? instructions,
    required String? source,
    required String? tags,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}

@freezed
class MealResponse with _$MealResponse {
  const factory MealResponse({
    required Meal meal,
  }) = _MealResponse;

  factory MealResponse.fromJson(Map<String, dynamic> json) =>
      _$MealResponseFromJson(json);
}

@freezed
class MealsResponse with _$MealsResponse {
  const factory MealsResponse({
    required List<Meal> meals,
  }) = _MealsResponse;

  factory MealsResponse.fromJson(Map<String, dynamic> json) =>
      _$MealsResponseFromJson(json);
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
