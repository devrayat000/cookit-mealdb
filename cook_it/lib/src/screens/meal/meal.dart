import 'package:beamer/beamer.dart';
import 'package:cook_it/src/screens/meal/category/category.dart';
import 'package:cook_it/src/screens/meal/meal_details/meal_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Meal'),
      ),
    );
  }
}
