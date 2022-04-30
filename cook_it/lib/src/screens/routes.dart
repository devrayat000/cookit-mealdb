import 'package:cook_it/src/screens/home/home.dart';
import 'package:cook_it/src/screens/meal/category/category.dart';
import 'package:cook_it/src/screens/meal/meal.dart';
import 'package:cook_it/src/screens/meal/meal_details/meal_details.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<MealRoute>(
      path: 'meal',
      routes: [
        TypedGoRoute<CategoryRoute>(path: 'category'),
        TypedGoRoute<MealDetailRoute>(path: ':mealId'),
      ],
    )
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => HomeScreen();
}

class MealRoute extends GoRouteData {
  const MealRoute();

  @override
  Widget build(BuildContext context) => const MealScreen();
}

class MealDetailRoute extends GoRouteData {
  final String mealId;
  const MealDetailRoute({required this.mealId});

  @override
  Widget build(BuildContext context) => MealDetailScreen(mealId: mealId);
}

class CategoryRoute extends GoRouteData {
  const CategoryRoute();

  @override
  Widget build(BuildContext context) => const CategoryScreen();
}
