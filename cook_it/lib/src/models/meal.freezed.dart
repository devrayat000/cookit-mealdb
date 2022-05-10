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
  String get id => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealBaseCopyWith<MealBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealBaseCopyWith<$Res> {
  factory $MealBaseCopyWith(MealBase value, $Res Function(MealBase) then) =
      _$MealBaseCopyWithImpl<$Res>;
  $Res call({String id, String? thumb, String title});
}

/// @nodoc
class _$MealBaseCopyWithImpl<$Res> implements $MealBaseCopyWith<$Res> {
  _$MealBaseCopyWithImpl(this._value, this._then);

  final MealBase _value;
  // ignore: unused_field
  final $Res Function(MealBase) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumb = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MealBaseCopyWith<$Res> implements $MealBaseCopyWith<$Res> {
  factory _$MealBaseCopyWith(_MealBase value, $Res Function(_MealBase) then) =
      __$MealBaseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? thumb, String title});
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
    Object? id = freezed,
    Object? thumb = freezed,
    Object? title = freezed,
  }) {
    return _then(_MealBase(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealBase implements _MealBase {
  const _$_MealBase(
      {required this.id, required this.thumb, required this.title});

  factory _$_MealBase.fromJson(Map<String, dynamic> json) =>
      _$$_MealBaseFromJson(json);

  @override
  final String id;
  @override
  final String? thumb;
  @override
  final String title;

  @override
  String toString() {
    return 'MealBase(id: $id, thumb: $thumb, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealBase &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumb, thumb) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumb),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$MealBaseCopyWith<_MealBase> get copyWith =>
      __$MealBaseCopyWithImpl<_MealBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealBaseToJson(this);
  }
}

abstract class _MealBase implements MealBase {
  const factory _MealBase(
      {required final String id,
      required final String? thumb,
      required final String title}) = _$_MealBase;

  factory _MealBase.fromJson(Map<String, dynamic> json) = _$_MealBase.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get thumb => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealBaseCopyWith<_MealBase> get copyWith =>
      throw _privateConstructorUsedError;
}

MealBaseResponse _$MealBaseResponseFromJson(Map<String, dynamic> json) {
  return _MealBaseResponse.fromJson(json);
}

/// @nodoc
mixin _$MealBaseResponse {
  List<MealBase> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealBaseResponseCopyWith<MealBaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealBaseResponseCopyWith<$Res> {
  factory $MealBaseResponseCopyWith(
          MealBaseResponse value, $Res Function(MealBaseResponse) then) =
      _$MealBaseResponseCopyWithImpl<$Res>;
  $Res call({List<MealBase> meals});
}

/// @nodoc
class _$MealBaseResponseCopyWithImpl<$Res>
    implements $MealBaseResponseCopyWith<$Res> {
  _$MealBaseResponseCopyWithImpl(this._value, this._then);

  final MealBaseResponse _value;
  // ignore: unused_field
  final $Res Function(MealBaseResponse) _then;

  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealBase>,
    ));
  }
}

/// @nodoc
abstract class _$MealBaseResponseCopyWith<$Res>
    implements $MealBaseResponseCopyWith<$Res> {
  factory _$MealBaseResponseCopyWith(
          _MealBaseResponse value, $Res Function(_MealBaseResponse) then) =
      __$MealBaseResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MealBase> meals});
}

/// @nodoc
class __$MealBaseResponseCopyWithImpl<$Res>
    extends _$MealBaseResponseCopyWithImpl<$Res>
    implements _$MealBaseResponseCopyWith<$Res> {
  __$MealBaseResponseCopyWithImpl(
      _MealBaseResponse _value, $Res Function(_MealBaseResponse) _then)
      : super(_value, (v) => _then(v as _MealBaseResponse));

  @override
  _MealBaseResponse get _value => super._value as _MealBaseResponse;

  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_MealBaseResponse(
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealBase>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealBaseResponse implements _MealBaseResponse {
  const _$_MealBaseResponse({required final List<MealBase> meals})
      : _meals = meals;

  factory _$_MealBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MealBaseResponseFromJson(json);

  final List<MealBase> _meals;
  @override
  List<MealBase> get meals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealBaseResponse(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealBaseResponse &&
            const DeepCollectionEquality().equals(other.meals, meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(meals));

  @JsonKey(ignore: true)
  @override
  _$MealBaseResponseCopyWith<_MealBaseResponse> get copyWith =>
      __$MealBaseResponseCopyWithImpl<_MealBaseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealBaseResponseToJson(this);
  }
}

abstract class _MealBaseResponse implements MealBaseResponse {
  const factory _MealBaseResponse({required final List<MealBase> meals}) =
      _$_MealBaseResponse;

  factory _MealBaseResponse.fromJson(Map<String, dynamic> json) =
      _$_MealBaseResponse.fromJson;

  @override
  List<MealBase> get meals => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealBaseResponseCopyWith<_MealBaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get id => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get youtube => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get imageSource => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? thumb,
      String title,
      String? category,
      String? youtube,
      DateTime? dateModified,
      List<Ingredient> ingredients,
      String? area,
      String? imageSource,
      String? instructions,
      String? source,
      String? tags});
}

/// @nodoc
class _$MealCopyWithImpl<$Res> implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  final Meal _value;
  // ignore: unused_field
  final $Res Function(Meal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumb = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? youtube = freezed,
    Object? dateModified = freezed,
    Object? ingredients = freezed,
    Object? area = freezed,
    Object? imageSource = freezed,
    Object? instructions = freezed,
    Object? source = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: dateModified == freezed
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      imageSource: imageSource == freezed
          ? _value.imageSource
          : imageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String? thumb,
      String title,
      String? category,
      String? youtube,
      DateTime? dateModified,
      List<Ingredient> ingredients,
      String? area,
      String? imageSource,
      String? instructions,
      String? source,
      String? tags});
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
    Object? id = freezed,
    Object? thumb = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? youtube = freezed,
    Object? dateModified = freezed,
    Object? ingredients = freezed,
    Object? area = freezed,
    Object? imageSource = freezed,
    Object? instructions = freezed,
    Object? source = freezed,
    Object? tags = freezed,
  }) {
    return _then(_Meal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: dateModified == freezed
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      imageSource: imageSource == freezed
          ? _value.imageSource
          : imageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  const _$_Meal(
      {required this.id,
      required this.thumb,
      required this.title,
      required this.category,
      required this.youtube,
      required this.dateModified,
      required final List<Ingredient> ingredients,
      required this.area,
      required this.imageSource,
      required this.instructions,
      required this.source,
      required this.tags})
      : _ingredients = ingredients;

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String id;
  @override
  final String? thumb;
  @override
  final String title;
  @override
  final String? category;
  @override
  final String? youtube;
  @override
  final DateTime? dateModified;
  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final String? area;
  @override
  final String? imageSource;
  @override
  final String? instructions;
  @override
  final String? source;
  @override
  final String? tags;

  @override
  String toString() {
    return 'Meal(id: $id, thumb: $thumb, title: $title, category: $category, youtube: $youtube, dateModified: $dateModified, ingredients: $ingredients, area: $area, imageSource: $imageSource, instructions: $instructions, source: $source, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumb, thumb) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.youtube, youtube) &&
            const DeepCollectionEquality()
                .equals(other.dateModified, dateModified) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality()
                .equals(other.imageSource, imageSource) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumb),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(youtube),
      const DeepCollectionEquality().hash(dateModified),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(imageSource),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  _$MealCopyWith<_Meal> get copyWith =>
      __$MealCopyWithImpl<_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(this);
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {required final String id,
      required final String? thumb,
      required final String title,
      required final String? category,
      required final String? youtube,
      required final DateTime? dateModified,
      required final List<Ingredient> ingredients,
      required final String? area,
      required final String? imageSource,
      required final String? instructions,
      required final String? source,
      required final String? tags}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get thumb => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  String? get youtube => throw _privateConstructorUsedError;
  @override
  DateTime? get dateModified => throw _privateConstructorUsedError;
  @override
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  @override
  String? get area => throw _privateConstructorUsedError;
  @override
  String? get imageSource => throw _privateConstructorUsedError;
  @override
  String? get instructions => throw _privateConstructorUsedError;
  @override
  String? get source => throw _privateConstructorUsedError;
  @override
  String? get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealCopyWith<_Meal> get copyWith => throw _privateConstructorUsedError;
}

MealResponse _$MealResponseFromJson(Map<String, dynamic> json) {
  return _MealResponse.fromJson(json);
}

/// @nodoc
mixin _$MealResponse {
  Meal get meal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealResponseCopyWith<MealResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealResponseCopyWith<$Res> {
  factory $MealResponseCopyWith(
          MealResponse value, $Res Function(MealResponse) then) =
      _$MealResponseCopyWithImpl<$Res>;
  $Res call({Meal meal});

  $MealCopyWith<$Res> get meal;
}

/// @nodoc
class _$MealResponseCopyWithImpl<$Res> implements $MealResponseCopyWith<$Res> {
  _$MealResponseCopyWithImpl(this._value, this._then);

  final MealResponse _value;
  // ignore: unused_field
  final $Res Function(MealResponse) _then;

  @override
  $Res call({
    Object? meal = freezed,
  }) {
    return _then(_value.copyWith(
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal,
    ));
  }

  @override
  $MealCopyWith<$Res> get meal {
    return $MealCopyWith<$Res>(_value.meal, (value) {
      return _then(_value.copyWith(meal: value));
    });
  }
}

/// @nodoc
abstract class _$MealResponseCopyWith<$Res>
    implements $MealResponseCopyWith<$Res> {
  factory _$MealResponseCopyWith(
          _MealResponse value, $Res Function(_MealResponse) then) =
      __$MealResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meal meal});

  @override
  $MealCopyWith<$Res> get meal;
}

/// @nodoc
class __$MealResponseCopyWithImpl<$Res> extends _$MealResponseCopyWithImpl<$Res>
    implements _$MealResponseCopyWith<$Res> {
  __$MealResponseCopyWithImpl(
      _MealResponse _value, $Res Function(_MealResponse) _then)
      : super(_value, (v) => _then(v as _MealResponse));

  @override
  _MealResponse get _value => super._value as _MealResponse;

  @override
  $Res call({
    Object? meal = freezed,
  }) {
    return _then(_MealResponse(
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealResponse implements _MealResponse {
  const _$_MealResponse({required this.meal});

  factory _$_MealResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MealResponseFromJson(json);

  @override
  final Meal meal;

  @override
  String toString() {
    return 'MealResponse(meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealResponse &&
            const DeepCollectionEquality().equals(other.meal, meal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(meal));

  @JsonKey(ignore: true)
  @override
  _$MealResponseCopyWith<_MealResponse> get copyWith =>
      __$MealResponseCopyWithImpl<_MealResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealResponseToJson(this);
  }
}

abstract class _MealResponse implements MealResponse {
  const factory _MealResponse({required final Meal meal}) = _$_MealResponse;

  factory _MealResponse.fromJson(Map<String, dynamic> json) =
      _$_MealResponse.fromJson;

  @override
  Meal get meal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealResponseCopyWith<_MealResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MealsResponse _$MealsResponseFromJson(Map<String, dynamic> json) {
  return _MealsResponse.fromJson(json);
}

/// @nodoc
mixin _$MealsResponse {
  List<Meal> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealsResponseCopyWith<MealsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsResponseCopyWith<$Res> {
  factory $MealsResponseCopyWith(
          MealsResponse value, $Res Function(MealsResponse) then) =
      _$MealsResponseCopyWithImpl<$Res>;
  $Res call({List<Meal> meals});
}

/// @nodoc
class _$MealsResponseCopyWithImpl<$Res>
    implements $MealsResponseCopyWith<$Res> {
  _$MealsResponseCopyWithImpl(this._value, this._then);

  final MealsResponse _value;
  // ignore: unused_field
  final $Res Function(MealsResponse) _then;

  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ));
  }
}

/// @nodoc
abstract class _$MealsResponseCopyWith<$Res>
    implements $MealsResponseCopyWith<$Res> {
  factory _$MealsResponseCopyWith(
          _MealsResponse value, $Res Function(_MealsResponse) then) =
      __$MealsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Meal> meals});
}

/// @nodoc
class __$MealsResponseCopyWithImpl<$Res>
    extends _$MealsResponseCopyWithImpl<$Res>
    implements _$MealsResponseCopyWith<$Res> {
  __$MealsResponseCopyWithImpl(
      _MealsResponse _value, $Res Function(_MealsResponse) _then)
      : super(_value, (v) => _then(v as _MealsResponse));

  @override
  _MealsResponse get _value => super._value as _MealsResponse;

  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_MealsResponse(
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealsResponse implements _MealsResponse {
  const _$_MealsResponse({required final List<Meal> meals}) : _meals = meals;

  factory _$_MealsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MealsResponseFromJson(json);

  final List<Meal> _meals;
  @override
  List<Meal> get meals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealsResponse(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealsResponse &&
            const DeepCollectionEquality().equals(other.meals, meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(meals));

  @JsonKey(ignore: true)
  @override
  _$MealsResponseCopyWith<_MealsResponse> get copyWith =>
      __$MealsResponseCopyWithImpl<_MealsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealsResponseToJson(this);
  }
}

abstract class _MealsResponse implements MealsResponse {
  const factory _MealsResponse({required final List<Meal> meals}) =
      _$_MealsResponse;

  factory _MealsResponse.fromJson(Map<String, dynamic> json) =
      _$_MealsResponse.fromJson;

  @override
  List<Meal> get meals => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealsResponseCopyWith<_MealsResponse> get copyWith =>
      throw _privateConstructorUsedError;
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
