part of widgets;

class MealCard extends StatelessWidget {
  final String imageUrl;
  final Widget title;
  final Widget? subtitle;
  const MealCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fitWidth,
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
                child: title,
              ),
            ),
            if (subtitle != null)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
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
    );
  }
}
