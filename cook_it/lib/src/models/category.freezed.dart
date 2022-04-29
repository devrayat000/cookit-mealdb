// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryBase {
  String get strCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryBaseCopyWith<CategoryBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBaseCopyWith<$Res> {
  factory $CategoryBaseCopyWith(
          CategoryBase value, $Res Function(CategoryBase) then) =
      _$CategoryBaseCopyWithImpl<$Res>;
  $Res call({String strCategory});
}

/// @nodoc
class _$CategoryBaseCopyWithImpl<$Res> implements $CategoryBaseCopyWith<$Res> {
  _$CategoryBaseCopyWithImpl(this._value, this._then);

  final CategoryBase _value;
  // ignore: unused_field
  final $Res Function(CategoryBase) _then;

  @override
  $Res call({
    Object? strCategory = freezed,
  }) {
    return _then(_value.copyWith(
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryBaseCopyWith<$Res>
    implements $CategoryBaseCopyWith<$Res> {
  factory _$CategoryBaseCopyWith(
          _CategoryBase value, $Res Function(_CategoryBase) then) =
      __$CategoryBaseCopyWithImpl<$Res>;
  @override
  $Res call({String strCategory});
}

/// @nodoc
class __$CategoryBaseCopyWithImpl<$Res> extends _$CategoryBaseCopyWithImpl<$Res>
    implements _$CategoryBaseCopyWith<$Res> {
  __$CategoryBaseCopyWithImpl(
      _CategoryBase _value, $Res Function(_CategoryBase) _then)
      : super(_value, (v) => _then(v as _CategoryBase));

  @override
  _CategoryBase get _value => super._value as _CategoryBase;

  @override
  $Res call({
    Object? strCategory = freezed,
  }) {
    return _then(_CategoryBase(
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryBase implements _CategoryBase {
  const _$_CategoryBase({required this.strCategory});

  @override
  final String strCategory;

  @override
  String toString() {
    return 'CategoryBase(strCategory: $strCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryBase &&
            const DeepCollectionEquality()
                .equals(other.strCategory, strCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(strCategory));

  @JsonKey(ignore: true)
  @override
  _$CategoryBaseCopyWith<_CategoryBase> get copyWith =>
      __$CategoryBaseCopyWithImpl<_CategoryBase>(this, _$identity);
}

abstract class _CategoryBase implements CategoryBase {
  const factory _CategoryBase({required final String strCategory}) =
      _$_CategoryBase;

  @override
  String get strCategory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryBaseCopyWith<_CategoryBase> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get idCategory => throw _privateConstructorUsedError;
  String get strCategory => throw _privateConstructorUsedError;
  String get strCategoryThumb => throw _privateConstructorUsedError;
  String get strCategoryDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? idCategory = freezed,
    Object? strCategory = freezed,
    Object? strCategoryThumb = freezed,
    Object? strCategoryDescription = freezed,
  }) {
    return _then(_value.copyWith(
      idCategory: idCategory == freezed
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: strCategoryThumb == freezed
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: strCategoryDescription == freezed
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? idCategory = freezed,
    Object? strCategory = freezed,
    Object? strCategoryThumb = freezed,
    Object? strCategoryDescription = freezed,
  }) {
    return _then(_Category(
      idCategory: idCategory == freezed
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: strCategoryThumb == freezed
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: strCategoryDescription == freezed
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category(
      {required this.idCategory,
      required this.strCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String idCategory;
  @override
  final String strCategory;
  @override
  final String strCategoryThumb;
  @override
  final String strCategoryDescription;

  @override
  String toString() {
    return 'Category(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            const DeepCollectionEquality()
                .equals(other.idCategory, idCategory) &&
            const DeepCollectionEquality()
                .equals(other.strCategory, strCategory) &&
            const DeepCollectionEquality()
                .equals(other.strCategoryThumb, strCategoryThumb) &&
            const DeepCollectionEquality()
                .equals(other.strCategoryDescription, strCategoryDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idCategory),
      const DeepCollectionEquality().hash(strCategory),
      const DeepCollectionEquality().hash(strCategoryThumb),
      const DeepCollectionEquality().hash(strCategoryDescription));

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String idCategory,
      required final String strCategory,
      required final String strCategoryThumb,
      required final String strCategoryDescription}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get idCategory => throw _privateConstructorUsedError;
  @override
  String get strCategory => throw _privateConstructorUsedError;
  @override
  String get strCategoryThumb => throw _privateConstructorUsedError;
  @override
  String get strCategoryDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) {
  return _CategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoriesResponse {
  List<Category> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesResponseCopyWith<CategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseCopyWith<$Res> {
  factory $CategoriesResponseCopyWith(
          CategoriesResponse value, $Res Function(CategoriesResponse) then) =
      _$CategoriesResponseCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoriesResponseCopyWithImpl<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  _$CategoriesResponseCopyWithImpl(this._value, this._then);

  final CategoriesResponse _value;
  // ignore: unused_field
  final $Res Function(CategoriesResponse) _then;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$CategoriesResponseCopyWith<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  factory _$CategoriesResponseCopyWith(
          _CategoriesResponse value, $Res Function(_CategoriesResponse) then) =
      __$CategoriesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Category> categories});
}

/// @nodoc
class __$CategoriesResponseCopyWithImpl<$Res>
    extends _$CategoriesResponseCopyWithImpl<$Res>
    implements _$CategoriesResponseCopyWith<$Res> {
  __$CategoriesResponseCopyWithImpl(
      _CategoriesResponse _value, $Res Function(_CategoriesResponse) _then)
      : super(_value, (v) => _then(v as _CategoriesResponse));

  @override
  _CategoriesResponse get _value => super._value as _CategoriesResponse;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_CategoriesResponse(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesResponse implements _CategoriesResponse {
  const _$_CategoriesResponse({required final List<Category> categories})
      : _categories = categories;

  factory _$_CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesResponseFromJson(json);

  final List<Category> _categories;
  @override
  List<Category> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoriesResponse &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$CategoriesResponseCopyWith<_CategoriesResponse> get copyWith =>
      __$CategoriesResponseCopyWithImpl<_CategoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesResponseToJson(this);
  }
}

abstract class _CategoriesResponse implements CategoriesResponse {
  const factory _CategoriesResponse(
      {required final List<Category> categories}) = _$_CategoriesResponse;

  factory _CategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoriesResponse.fromJson;

  @override
  List<Category> get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoriesResponseCopyWith<_CategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
