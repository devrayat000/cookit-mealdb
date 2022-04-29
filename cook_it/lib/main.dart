import 'package:beamer/beamer.dart';
import 'package:cook_it/src/screens/home/home.dart';
import 'package:cook_it/src/services/local.dart';
import 'package:cook_it/src/services/remote.dart';
import 'package:cook_it/src/theme/light.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final dio = Dio();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<RemoteApi>(create: (_) => RemoteApi(dio)),
        RepositoryProvider<LocalApi>(create: (_) => LocalApi(dio)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerDelegate: _routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }

  static final _routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => const HomeScreen(),
      },
    ),
  );
}
