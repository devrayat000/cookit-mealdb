import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_it/src/screens/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealDB'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello there',
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8.0),
            Text(
                'Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.'),
            SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Get Started'.toUpperCase()),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Categories'.toUpperCase()),
                ),
              ],
            ),
            CachedNetworkImage(
              imageUrl:
                  'https://www.themealdb.com/images/icons/favicon/apple-touch-icon.png',
              fit: BoxFit.fitWidth,
            ),
            Text.rich(
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
            ),
            SizedBox(height: 36.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'eg. Chicken Breast',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                prefixIcon: Icon(Icons.search),
              ),
              enabled: false,
            ),
            SizedBox(height: 36.0),
            Text.rich(
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
            ),
            RandomMeals(),
          ],
        ),
      ),
    );
  }
}
