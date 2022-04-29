import 'package:cook_it/src/models/meal.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'local.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:3000/api/')
abstract class LocalApi {
  factory LocalApi(Dio dio, {String baseUrl}) = _LocalApi;

  @GET('/meals/{id}')
  Future<MealResponse> getMealById(@Path('id') final String id);

  @GET('/meals/random')
  @CacheControl(maxAge: 60 * 60)
  Future<MealsResponse> getRandomMeals([@Query('limit') final int? limit]);
}
