part of widgets_home;

class RandomMeals extends fluent.StatefulWidget {
  const RandomMeals({Key? key}) : super(key: key);

  @override
  State<RandomMeals> createState() => _RandomMealsState();
}

class _RandomMealsState extends State<RandomMeals>
    with AutomaticKeepAliveClientMixin<RandomMeals> {
  final _scrollController = ScrollController();
  late final Future<MealsResponse> _mealFuture;

  @override
  void initState() {
    super.initState();
    _mealFuture = RepositoryProvider.of<LocalApi>(context).getRandomMeals();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AsyncBuilder<MealsResponse>(
      future: _mealFuture,
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
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          childAspectRatio: 18 / 24.5,
        ),
        itemBuilder: (context, index) => _buildItem(context, meals, index),
      );

  Widget _buildItem(BuildContext context, List<Meal> meals, int index) {
    final meal = meals[index];
    final _id = meal.id;
    return MealCard(
      key: ValueKey('random-$_id'),
      mealId: _id,
      imageUrl: meal.thumb,
      title: Text(meal.title),
      subtitle: meal.category != null ? Text(meal.category!) : null,
    );
  }

  @override
  final wantKeepAlive = true;
}
