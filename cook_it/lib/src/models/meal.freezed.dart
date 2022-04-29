// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealBase _$MealBaseFromJson(Map<String, dynamic> json) {
  return _MealBase.fromJson(json);
}

/// @nodoc
mixin _$MealBase {
  String get idMeal => throw _privateConstructorUsedError;
  String? get strMealThumb => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealBaseCopyWith<MealBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealBaseCopyWith<$Res> {
  factory $MealBaseCopyWith(MealBase value, $Res Function(MealBase) then) =
      _$MealBaseCopyWithImpl<$Res>;
  $Res call({String idMeal, String? strMealThumb, String strMeal});
}

/// @nodoc
class _$MealBaseCopyWithImpl<$Res> implements $MealBaseCopyWith<$Res> {
  _$MealBaseCopyWithImpl(this._value, this._then);

  final MealBase _value;
  // ignore: unused_field
  final $Res Function(MealBase) _then;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MealBaseCopyWith<$Res> implements $MealBaseCopyWith<$Res> {
  factory _$MealBaseCopyWith(_MealBase value, $Res Function(_MealBase) then) =
      __$MealBaseCopyWithImpl<$Res>;
  @override
  $Res call({String idMeal, String? strMealThumb, String strMeal});
}

/// @nodoc
class __$MealBaseCopyWithImpl<$Res> extends _$MealBaseCopyWithImpl<$Res>
    implements _$MealBaseCopyWith<$Res> {
  __$MealBaseCopyWithImpl(_MealBase _value, $Res Function(_MealBase) _then)
      : super(_value, (v) => _then(v as _MealBase));

  @override
  _MealBase get _value => super._value as _MealBase;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
  }) {
    return _then(_MealBase(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealBase implements _MealBase {
  const _$_MealBase(
      {required this.idMeal,
      required this.strMealThumb,
      required this.strMeal});

  factory _$_MealBase.fromJson(Map<String, dynamic> json) =>
      _$$_MealBaseFromJson(json);

  @override
  final String idMeal;
  @override
  final String? strMealThumb;
  @override
  final String strMeal;

  @override
  String toString() {
    return 'MealBase(idMeal: $idMeal, strMealThumb: $strMealThumb, strMeal: $strMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealBase &&
            const DeepCollectionEquality().equals(other.idMeal, idMeal) &&
            const DeepCollectionEquality()
                .equals(other.strMealThumb, strMealThumb) &&
            const DeepCollectionEquality().equals(other.strMeal, strMeal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idMeal),
      const DeepCollectionEquality().hash(strMealThumb),
      const DeepCollectionEquality().hash(strMeal));

  @JsonKey(ignore: true)
  @override
  _$MealBaseCopyWith<_MealBase> get copyWith =>
      __$MealBaseCopyWithImpl<_MealBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealBaseToJson(this);
  }
}

abstract class _MealBase implements MealBase, IMealBase {
  const factory _MealBase(
      {required final String idMeal,
      required final String? strMealThumb,
      required final String strMeal}) = _$_MealBase;

  factory _MealBase.fromJson(Map<String, dynamic> json) = _$_MealBase.fromJson;

  @override
  String get idMeal => throw _privateConstructorUsedError;
  @override
  String? get strMealThumb => throw _privateConstructorUsedError;
  @override
  String get strMeal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealBaseCopyWith<_MealBase> get copyWith =>
      throw _privateConstructorUsedError;
}

MealFromCategory _$MealFromCategoryFromJson(Map<String, dynamic> json) {
  return _MealFromCategory.fromJson(json);
}

/// @nodoc
mixin _$MealFromCategory {
  String get idMeal => throw _privateConstructorUsedError;
  String? get strMealThumb => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;
  String? get strCategory => throw _privateConstructorUsedError;
  String? get strYoutube => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealFromCategoryCopyWith<MealFromCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealFromCategoryCopyWith<$Res> {
  factory $MealFromCategoryCopyWith(
          MealFromCategory value, $Res Function(MealFromCategory) then) =
      _$MealFromCategoryCopyWithImpl<$Res>;
  $Res call(
      {String idMeal,
      String? strMealThumb,
      String strMeal,
      String? strCategory,
      String? strYoutube});
}

/// @nodoc
class _$MealFromCategoryCopyWithImpl<$Res>
    implements $MealFromCategoryCopyWith<$Res> {
  _$MealFromCategoryCopyWithImpl(this._value, this._then);

  final MealFromCategory _value;
  // ignore: unused_field
  final $Res Function(MealFromCategory) _then;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
    Object? strCategory = freezed,
    Object? strYoutube = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: strYoutube == freezed
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MealFromCategoryCopyWith<$Res>
    implements $MealFromCategoryCopyWith<$Res> {
  factory _$MealFromCategoryCopyWith(
          _MealFromCategory value, $Res Function(_MealFromCategory) then) =
      __$MealFromCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idMeal,
      String? strMealThumb,
      String strMeal,
      String? strCategory,
      String? strYoutube});
}

/// @nodoc
class __$MealFromCategoryCopyWithImpl<$Res>
    extends _$MealFromCategoryCopyWithImpl<$Res>
    implements _$MealFromCategoryCopyWith<$Res> {
  __$MealFromCategoryCopyWithImpl(
      _MealFromCategory _value, $Res Function(_MealFromCategory) _then)
      : super(_value, (v) => _then(v as _MealFromCategory));

  @override
  _MealFromCategory get _value => super._value as _MealFromCategory;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
    Object? strCategory = freezed,
    Object? strYoutube = freezed,
  }) {
    return _then(_MealFromCategory(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: strYoutube == freezed
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealFromCategory implements _MealFromCategory {
  const _$_MealFromCategory(
      {required this.idMeal,
      required this.strMealThumb,
      required this.strMeal,
      required this.strCategory,
      required this.strYoutube});

  factory _$_MealFromCategory.fromJson(Map<String, dynamic> json) =>
      _$$_MealFromCategoryFromJson(json);

  @override
  final String idMeal;
  @override
  final String? strMealThumb;
  @override
  final String strMeal;
  @override
  final String? strCategory;
  @override
  final String? strYoutube;

  @override
  String toString() {
    return 'MealFromCategory(idMeal: $idMeal, strMealThumb: $strMealThumb, strMeal: $strMeal, strCategory: $strCategory, strYoutube: $strYoutube)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealFromCategory &&
            const DeepCollectionEquality().equals(other.idMeal, idMeal) &&
            const DeepCollectionEquality()
                .equals(other.strMealThumb, strMealThumb) &&
            const DeepCollectionEquality().equals(other.strMeal, strMeal) &&
            const DeepCollectionEquality()
                .equals(other.strCategory, strCategory) &&
            const DeepCollectionEquality()
                .equals(other.strYoutube, strYoutube));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idMeal),
      const DeepCollectionEquality().hash(strMealThumb),
      const DeepCollectionEquality().hash(strMeal),
      const DeepCollectionEquality().hash(strCategory),
      const DeepCollectionEquality().hash(strYoutube));

  @JsonKey(ignore: true)
  @override
  _$MealFromCategoryCopyWith<_MealFromCategory> get copyWith =>
      __$MealFromCategoryCopyWithImpl<_MealFromCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealFromCategoryToJson(this);
  }
}

abstract class _MealFromCategory
    implements MealFromCategory, IMealFromCategory {
  const factory _MealFromCategory(
      {required final String idMeal,
      required final String? strMealThumb,
      required final String strMeal,
      required final String? strCategory,
      required final String? strYoutube}) = _$_MealFromCategory;

  factory _MealFromCategory.fromJson(Map<String, dynamic> json) =
      _$_MealFromCategory.fromJson;

  @override
  String get idMeal => throw _privateConstructorUsedError;
  @override
  String? get strMealThumb => throw _privateConstructorUsedError;
  @override
  String get strMeal => throw _privateConstructorUsedError;
  @override
  String? get strCategory => throw _privateConstructorUsedError;
  @override
  String? get strYoutube => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealFromCategoryCopyWith<_MealFromCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get idMeal => throw _privateConstructorUsedError;
  String? get strMealThumb => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;
  String? get strCategory => throw _privateConstructorUsedError;
  String? get strYoutube => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  String? get strArea => throw _privateConstructorUsedError;
  String? get strImageSource => throw _privateConstructorUsedError;
  String get strInstructions => throw _privateConstructorUsedError;
  String? get strSource => throw _privateConstructorUsedError;
  String? get strTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res>;
  $Res call(
      {String idMeal,
      String? strMealThumb,
      String strMeal,
      String? strCategory,
      String? strYoutube,
      DateTime? dateModified,
      List<Ingredient> ingredients,
      String? strArea,
      String? strImageSource,
      String strInstructions,
      String? strSource,
      String? strTags});
}

/// @nodoc
class _$MealCopyWithImpl<$Res> implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  final Meal _value;
  // ignore: unused_field
  final $Res Function(Meal) _then;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
    Object? strCategory = freezed,
    Object? strYoutube = freezed,
    Object? dateModified = freezed,
    Object? ingredients = freezed,
    Object? strArea = freezed,
    Object? strImageSource = freezed,
    Object? strInstructions = freezed,
    Object? strSource = freezed,
    Object? strTags = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: strYoutube == freezed
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: dateModified == freezed
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      strArea: strArea == freezed
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageSource: strImageSource == freezed
          ? _value.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: strInstructions == freezed
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      strSource: strSource == freezed
          ? _value.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: strTags == freezed
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$MealCopyWith(_Meal value, $Res Function(_Meal) then) =
      __$MealCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idMeal,
      String? strMealThumb,
      String strMeal,
      String? strCategory,
      String? strYoutube,
      DateTime? dateModified,
      List<Ingredient> ingredients,
      String? strArea,
      String? strImageSource,
      String strInstructions,
      String? strSource,
      String? strTags});
}

/// @nodoc
class __$MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res>
    implements _$MealCopyWith<$Res> {
  __$MealCopyWithImpl(_Meal _value, $Res Function(_Meal) _then)
      : super(_value, (v) => _then(v as _Meal));

  @override
  _Meal get _value => super._value as _Meal;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
    Object? strCategory = freezed,
    Object? strYoutube = freezed,
    Object? dateModified = freezed,
    Object? ingredients = freezed,
    Object? strArea = freezed,
    Object? strImageSource = freezed,
    Object? strInstructions = freezed,
    Object? strSource = freezed,
    Object? strTags = freezed,
  }) {
    return _then(_Meal(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: strYoutube == freezed
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: dateModified == freezed
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      strArea: strArea == freezed
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageSource: strImageSource == freezed
          ? _value.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: strInstructions == freezed
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      strSource: strSource == freezed
          ? _value.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: strTags == freezed
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  const _$_Meal(
      {required this.idMeal,
      required this.strMealThumb,
      required this.strMeal,
      required this.strCategory,
      required this.strYoutube,
      required this.dateModified,
      required final List<Ingredient> ingredients,
      required this.strArea,
      required this.strImageSource,
      required this.strInstructions,
      required this.strSource,
      required this.strTags})
      : _ingredients = ingredients;

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String idMeal;
  @override
  final String? strMealThumb;
  @override
  final String strMeal;
  @override
  final String? strCategory;
  @override
  final String? strYoutube;
  @override
  final DateTime? dateModified;
  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final String? strArea;
  @override
  final String? strImageSource;
  @override
  final String strInstructions;
  @override
  final String? strSource;
  @override
  final String? strTags;

  @override
  String toString() {
    return 'Meal(idMeal: $idMeal, strMealThumb: $strMealThumb, strMeal: $strMeal, strCategory: $strCategory, strYoutube: $strYoutube, dateModified: $dateModified, ingredients: $ingredients, strArea: $strArea, strImageSource: $strImageSource, strInstructions: $strInstructions, strSource: $strSource, strTags: $strTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meal &&
            const DeepCollectionEquality().equals(other.idMeal, idMeal) &&
            const DeepCollectionEquality()
                .equals(other.strMealThumb, strMealThumb) &&
            const DeepCollectionEquality().equals(other.strMeal, strMeal) &&
            const DeepCollectionEquality()
                .equals(other.strCategory, strCategory) &&
            const DeepCollectionEquality()
                .equals(other.strYoutube, strYoutube) &&
            const DeepCollectionEquality()
                .equals(other.dateModified, dateModified) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality().equals(other.strArea, strArea) &&
            const DeepCollectionEquality()
                .equals(other.strImageSource, strImageSource) &&
            const DeepCollectionEquality()
                .equals(other.strInstructions, strInstructions) &&
            const DeepCollectionEquality().equals(other.strSource, strSource) &&
            const DeepCollectionEquality().equals(other.strTags, strTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idMeal),
      const DeepCollectionEquality().hash(strMealThumb),
      const DeepCollectionEquality().hash(strMeal),
      const DeepCollectionEquality().hash(strCategory),
      const DeepCollectionEquality().hash(strYoutube),
      const DeepCollectionEquality().hash(dateModified),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(strArea),
      const DeepCollectionEquality().hash(strImageSource),
      const DeepCollectionEquality().hash(strInstructions),
      const DeepCollectionEquality().hash(strSource),
      const DeepCollectionEquality().hash(strTags));

  @JsonKey(ignore: true)
  @override
  _$MealCopyWith<_Meal> get copyWith =>
      __$MealCopyWithImpl<_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(this);
  }
}

abstract class _Meal implements Meal, IMeal {
  const factory _Meal(
      {required final String idMeal,
      required final String? strMealThumb,
      required final String strMeal,
      required final String? strCategory,
      required final String? strYoutube,
      required final DateTime? dateModified,
      required final List<Ingredient> ingredients,
      required final String? strArea,
      required final String? strImageSource,
      required final String strInstructions,
      required final String? strSource,
      required final String? strTags}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get idMeal => throw _privateConstructorUsedError;
  @override
  String? get strMealThumb => throw _privateConstructorUsedError;
  @override
  String get strMeal => throw _privateConstructorUsedError;
  @override
  String? get strCategory => throw _privateConstructorUsedError;
  @override
  String? get strYoutube => throw _privateConstructorUsedError;
  @override
  DateTime? get dateModified => throw _privateConstructorUsedError;
  @override
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  @override
  String? get strArea => throw _privateConstructorUsedError;
  @override
  String? get strImageSource => throw _privateConstructorUsedError;
  @override
  String get strInstructions => throw _privateConstructorUsedError;
  @override
  String? get strSource => throw _privateConstructorUsedError;
  @override
  String? get strTags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealCopyWith<_Meal> get copyWith => throw _privateConstructorUsedError;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  String get item => throw _privateConstructorUsedError;
  String get measure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res>;
  $Res call({String item, String measure});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res> implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  final Ingredient _value;
  // ignore: unused_field
  final $Res Function(Ingredient) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? measure = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      measure: measure == freezed
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IngredientCopyWith<$Res> implements $IngredientCopyWith<$Res> {
  factory _$IngredientCopyWith(
          _Ingredient value, $Res Function(_Ingredient) then) =
      __$IngredientCopyWithImpl<$Res>;
  @override
  $Res call({String item, String measure});
}

/// @nodoc
class __$IngredientCopyWithImpl<$Res> extends _$IngredientCopyWithImpl<$Res>
    implements _$IngredientCopyWith<$Res> {
  __$IngredientCopyWithImpl(
      _Ingredient _value, $Res Function(_Ingredient) _then)
      : super(_value, (v) => _then(v as _Ingredient));

  @override
  _Ingredient get _value => super._value as _Ingredient;

  @override
  $Res call({
    Object? item = freezed,
    Object? measure = freezed,
  }) {
    return _then(_Ingredient(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      measure: measure == freezed
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient implements _Ingredient {
  const _$_Ingredient({required this.item, required this.measure});

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  final String item;
  @override
  final String measure;

  @override
  String toString() {
    return 'Ingredient(item: $item, measure: $measure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ingredient &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.measure, measure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(measure));

  @JsonKey(ignore: true)
  @override
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      __$IngredientCopyWithImpl<_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(this);
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required final String item,
      required final String measure}) = _$_Ingredient;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  String get item => throw _privateConstructorUsedError;
  @override
  String get measure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
