import 'package:beamer/beamer.dart';
import 'package:cook_it/src/screens/home/home.dart';
import 'package:cook_it/src/screens/meal/category/category.dart';
import 'package:cook_it/src/screens/meal/meal_details/meal_details.dart';
import 'package:cook_it/src/screens/routes.dart';
import 'package:cook_it/src/theme/light.dart';
import 'package:cook_it/src/utils/go_back_dispatcher.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cookit Android',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      // backButtonDispatcher: GoBackButtonDispatcher(
      //   routerDelegate: _router.routerDelegate,
      // ),
    );
  }

  static final _router = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: '/',
        name: 'Home',
        builder: (context, state) => HomeScreen(),
        routes: [
          GoRoute(
            path: 'meal',
            redirect: (_) => '/meal/category',
            routes: [
              GoRoute(
                path: ':mealId',
                name: 'MealDetails',
                builder: (context, state) {
                  final mealId = state.params['mealId']!;
                  return MealDetailScreen(mealId: mealId);
                },
              ),
            ],
          ),
          GoRoute(
            path: 'category',
            name: 'Category',
            builder: (context, state) => CategoryScreen(),
          ),
        ],
      ),
    ],
  );
}
