part of widgets_meal_details;

class InfoText extends StatelessWidget {
  final String type;
  final String info;

  const InfoText({
    Key? key,
    required this.type,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: Theme.of(context).textTheme.titleLarge,
        children: [
          TextSpan(text: '$type: '),
          TextSpan(
            text: info,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
