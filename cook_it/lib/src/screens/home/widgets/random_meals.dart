part of widgets_home;

class RandomMeals extends StatelessWidget {
  RandomMeals({Key? key}) : super(key: key);

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AsyncBuilder<MealsResponse>(
      future: RepositoryProvider.of<LocalApi>(context).getRandomMeals(),
      builder: (context, data) {
        final meals = data.meals;
        print(meals);
        return ListView.separated(
          key: const ValueKey('random'),
          cacheExtent: 60 * 60,
          controller: _scrollController,
          shrinkWrap: true,
          itemCount: meals.length,
          itemBuilder: (context, index) {
            final meal = meals[index];
            return MealCard(
              imageUrl: meal.strMealThumb!,
              title: Text(meal.strMeal),
              subtitle: Text(meal.strCategory!),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: 12.0),
        );
      },
      loadingBuilder: (_) => Text('Loading'),
      errorBuilder: (_, error) => Text(error.toString()),
    );
  }
}
