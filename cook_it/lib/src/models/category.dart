import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';
part 'category.freezed.dart';

abstract class ICategoryBase {
  late final String strCategory;
}

@freezed
class CategoryBase with _$CategoryBase {
  @Implements<ICategoryBase>()
  const factory CategoryBase({
    required String strCategory,
  }) = _CategoryBase;
}

abstract class ICategory extends ICategoryBase {
  late final String idCategory;
  late final String strCategoryThumb;
  late final String strCategoryDescription;
}

@freezed
class Category with _$Category {
  @Implements<ICategory>()
  const factory Category({
    required String strCategory,
    required String idCategory,
    required String strCategoryThumb,
    required String strCategoryDescription,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
