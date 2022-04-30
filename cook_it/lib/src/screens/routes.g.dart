// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'meal',
          factory: $MealRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'category',
              factory: $CategoryRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: ':mealId',
              factory: $MealDetailRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext buildContext) => buildContext.go(location, extra: this);
}

extension $MealRouteExtension on MealRoute {
  static MealRoute _fromState(GoRouterState state) => const MealRoute();

  String get location => GoRouteData.$location(
        '/meal',
      );

  void go(BuildContext buildContext) => buildContext.go(location, extra: this);
}

extension $CategoryRouteExtension on CategoryRoute {
  static CategoryRoute _fromState(GoRouterState state) => const CategoryRoute();

  String get location => GoRouteData.$location(
        '/meal\category',
      );

  void go(BuildContext buildContext) => buildContext.go(location, extra: this);
}

extension $MealDetailRouteExtension on MealDetailRoute {
  static MealDetailRoute _fromState(GoRouterState state) => MealDetailRoute(
        mealId: state.params['mealId']!,
      );

  String get location => GoRouteData.$location(
        '/meal\${Uri.encodeComponent(mealId)}',
      );

  void go(BuildContext buildContext) => buildContext.go(location, extra: this);
}
