import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealDB'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Text('GET STARTED'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('CATEGORIES'),
                  ),
                ],
              ),
              CachedNetworkImage(
                  imageUrl:
                      'https://www.themealdb.com/images/icons/favicon/apple-touch-icon.png'),
            ],
          ),
        ),
      ),
    );
  }
}
