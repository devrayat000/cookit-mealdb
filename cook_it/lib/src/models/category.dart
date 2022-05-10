import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';
part 'category.freezed.dart';

// abstract class ICategoryBase {
//   late final String strCategory;
// }

@freezed
class CategoryBase with _$CategoryBase {
  // @With<ICategoryBase>()
  const factory CategoryBase({
    required String name,
  }) = _CategoryBase;
}

// abstract class ICategory extends ICategoryBase {
//   late final String idCategory;
//   late final String strCategoryThumb;
//   late final String strCategoryDescription;
// }

@freezed
class Category with _$Category {
  // @With<ICategory>()
  const factory Category({
    required String id,
    required String name,
    required String thumb,
    required String description,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse({
    required List<Category> categories,
  }) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
