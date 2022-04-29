import 'package:cook_it/src/models/meal.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:cook_it/src/models/category.dart';

part 'remote.g.dart';

@RestApi(baseUrl: 'https://www.themealdb.com/api/json/v1/1/')
abstract class RemoteApi {
  factory RemoteApi(Dio dio, {String baseUrl}) = _RemoteApi;

  @GET('/categories.php')
  Future<CategoriesResponse> getCategories();

  @GET('/filter.php')
  Future<MealBaseResponse> _filterMeals({
    @Query('c') final String? category,
    @Query('a') final String? area,
    @Query('i') final String? ingredient,
  });

  @GET('/filter.php')
  Future<MealBaseResponse> getMealsByCategory(
      @Query('c') final String category);
}
