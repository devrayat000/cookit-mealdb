part of widgets_home;

class IntroTitle extends StatelessWidget {
  const IntroTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello there',
      style: Theme.of(context)
          .textTheme
          .headline2
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class IntroDescription extends StatelessWidget {
  const IntroDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
        'Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.');
  }
}

class SearchTitle extends StatelessWidget {
  const SearchTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(fontWeight: FontWeight.w900),
        children: const [
          TextSpan(text: 'Search for'),
          TextSpan(
            text: ' Delicious ',
            style: TextStyle(color: Colors.purple),
          ),
          TextSpan(text: 'meals.'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class RandomTitle extends StatelessWidget {
  const RandomTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(fontWeight: FontWeight.w900),
        children: const [
          TextSpan(text: 'Random'),
          TextSpan(
            text: ' Meals',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
