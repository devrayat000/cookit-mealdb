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
        if (Platform.isWindows) {
          return _buildWindowsMeals(meals);
        } else {
          return _buildAndroidMeals(meals);
        }
      },
      loadingBuilder: (_) => Text('Loading'),
      errorBuilder: (_, error) => Text(error.toString()),
    );
  }

  Widget _buildAndroidMeals(List<Meal> meals) => ListView.separated(
        key: const ValueKey('random'),
        cacheExtent: 60 * 60,
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: meals.length,
        itemBuilder: (context, index) => _buildItem(context, meals, index),
        separatorBuilder: (_, __) => const SizedBox(height: 12.0),
      );

  Widget _buildWindowsMeals(List<Meal> meals) => GridView.builder(
        key: const ValueKey('random'),
        cacheExtent: 60 * 60,
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: meals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisExtent: 12,
          // maxCrossAxisExtent: 300.0,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          childAspectRatio: 18 / 24.5,
        ),
        itemBuilder: (context, index) => _buildItem(context, meals, index),
      );

  Widget _buildItem(BuildContext context, List<Meal> meals, int index) {
    final meal = meals[index];
    final _id = meal.idMeal;
    return MealCard(
      key: ValueKey('random-$_id'),
      mealId: _id,
      imageUrl: meal.strMealThumb,
      title: Text(meal.strMeal),
      subtitle: meal.strCategory != null ? Text(meal.strCategory!) : null,
    );
  }
}
