part of widgets;

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('MealDB'),
      automaticallyImplyLeading: true,
    );
  }

  @override
  final preferredSize = const Size.fromHeight(kToolbarHeight);
}
