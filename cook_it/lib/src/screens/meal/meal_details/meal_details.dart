import 'package:cook_it/src/screens/meal/meal_details/widgets/widgets.dart';
import 'package:cook_it/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MealDetailScreen extends StatelessWidget {
  final String mealId;

  const MealDetailScreen({
    Key? key,
    required this.mealId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('MealDB'),
      ),
      body: MealBuilder(mealId: mealId),
    );
  }
}
