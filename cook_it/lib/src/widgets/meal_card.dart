part of widgets;

class MealCard extends StatelessWidget {
  final String mealId;
  final String? imageUrl;
  final Widget title;
  final Widget? subtitle;

  const MealCard({
    Key? key,
    required this.mealId,
    this.imageUrl = '',
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      // color: Colors.white,
      type: MaterialType.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: InkWell(
        onTap: () => context.push('/meal/$mealId'),
        splashFactory: InkRipple.splashFactory,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExtendedImage.network(
                imageUrl ?? '',
                fit: BoxFit.fitWidth,
                cache: true,
                cacheKey: 'meal-$mealId',
              ),
              const SizedBox(height: 12.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: DefaultTextStyle(
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  child: title,
                ),
              ),
              if (subtitle != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextStyle(
                        style: Theme.of(context).textTheme.headline6!,
                        child: subtitle!,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.youtube),
                        color: Colors.red,
                        iconSize: 28.0,
                        splashRadius: Material.defaultSplashRadius - 7,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
