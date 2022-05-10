part of widgets_meal_details;

class MealBuilder extends StatefulWidget {
  final String mealId;

  const MealBuilder({Key? key, required this.mealId}) : super(key: key);

  @override
  State<MealBuilder> createState() => _MealBuilderState();
}

class _MealBuilderState extends State<MealBuilder>
    with AutomaticKeepAliveClientMixin<MealBuilder> {
  late final Future<MealResponse> _mealFuture;
  late final ValueNotifier<bool> _isExpanded;

  @override
  final wantKeepAlive = true;

  @override
  void initState() {
    super.initState();
    _mealFuture =
        RepositoryProvider.of<LocalApi>(context).getMealById(widget.mealId);
    _isExpanded = ValueNotifier(false);

    _isExpanded.addListener(_gas);
  }

  void _gas() {
    print(_isExpanded.value);
  }

  @override
  void didUpdateWidget(covariant MealBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mealId != widget.mealId) {
      _mealFuture =
          RepositoryProvider.of<LocalApi>(context).getMealById(widget.mealId);
    }
  }

  @override
  void dispose() {
    _isExpanded.removeListener(_gas);
    _isExpanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AsyncBuilder<MealResponse>(
      future: _mealFuture,
      loadingBuilder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorBuilder: (context, error) => Center(
        child: Text(error.toString()),
      ),
      builder: (context, data) {
        final meal = data.meal;

        return SingleChildScrollView(
          key: ValueKey('meal-${meal.id}'),
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: [
              Text(
                meal.title,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (meal.category != null) ...[
                          InfoText(type: 'Category', info: meal.category!),
                          const SizedBox(height: 8.0),
                        ],
                        if (meal.area != null) ...[
                          InfoText(type: 'Area', info: meal.area!),
                          const SizedBox(height: 16.0),
                        ],
                        if (meal.tags != null) ...[
                          _breadCrumbs(meal.tags!),
                          const SizedBox(height: 16.0),
                        ],
                        if (meal.source != null)
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('View Original'.toUpperCase()),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey[600],
                              minimumSize: const Size(130, 45),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (meal.thumb != null)
                    Expanded(
                      child: ExtendedImage.network(
                        meal.thumb!,
                        cache: true,
                        cacheKey: 'meal-${meal.id}',
                        fit: BoxFit.fitWidth,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 36.0),
              if (meal.youtube != null) YoutubeTutorial(url: meal.youtube!),
            ],
          ),
        );
      },
    );
  }

  Widget _breadCrumbs(String tags) {
    final tagList = tags.split(r',');

    return BreadCrumb.builder(
      itemCount: tagList.length,
      builder: (index) => BreadCrumbItem(
        content: Text(
          tagList[index],
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      divider: const Icon(Icons.chevron_right),
    );
  }
}
