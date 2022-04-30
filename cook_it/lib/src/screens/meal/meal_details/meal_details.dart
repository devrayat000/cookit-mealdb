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
      ),
      body: Center(
        child: Text('Meal-$mealId'),
      ),
    );
  }
}
