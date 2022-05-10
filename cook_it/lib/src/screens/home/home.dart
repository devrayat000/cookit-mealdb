import 'dart:io';

import 'package:cook_it/src/screens/home/widgets/widgets.dart';
import 'package:cook_it/src/widgets/widgets.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
// import 'package:beamer/beamer.dart';
import 'package:extended_image/extended_image.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return NavigationView(
        pane: NavigationPane(
          header: Text('COOKit'),
          displayMode: PaneDisplayMode.auto,
          size: NavigationPaneSize(
            openWidth: MediaQuery.of(context).size.width / 4,
            openMaxWidth: 300,
            openMinWidth: 250,
          ),
          items: [
            PaneItem(
              icon: Icon(FluentIcons.video),
              title: Text('Movies'),
            ),
          ],
        ),
        content: NavigationBody(
          index: 0,
          children: [
            ScaffoldPage(
              content: _pageBody(context),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: const MyAppBar(),
        body: _pageBody(context),
      );
    }
  }

  Widget _pageBody(BuildContext context) {
    final hero = Platform.isWindows
        ? Expanded(child: _hero(context), flex: 3)
        : _hero(context);
    final heroImage =
        Platform.isWindows ? Expanded(child: _heroImage, flex: 1) : _heroImage;

    return SingleChildScrollView(
      key: const PageStorageKey('home'),
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 20.0)
          .copyWith(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flex(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            direction: Platform.isWindows ? Axis.horizontal : Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              hero,
              heroImage,
            ],
          ),
          const SizedBox(height: 36.0),
          const SearchTitle(),
          const SizedBox(height: 36.0),
          const SearchBox(),
          const SizedBox(height: 36.0),
          const RandomTitle(),
          const SizedBox(height: 16.0),
          RandomMeals(),
        ],
      ),
    );
  }

  Widget _hero(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IntroTitle(),
          const SizedBox(height: 8.0),
          const IntroDescription(),
          const SizedBox(height: 8.0),
          Wrap(
            spacing: 8.0,
            children: [
              PrimaryAction(
                onPressed: () {},
                child: Text('Get Started'.toUpperCase()),
              ),
              SecondaryAction(
                onPressed: () {
                  context.pushNamed('Category');
                },
                child: Text('Categories'.toUpperCase()),
              ),
            ],
          ),
        ],
      );

  Widget get _heroImage => ExtendedImage.network(
        'https://www.themealdb.com/images/icons/favicon/apple-touch-icon.png',
        cache: true,
        cacheKey: 'Hero',
        fit: BoxFit.fitWidth,
      );
}
