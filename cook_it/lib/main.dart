import 'dart:io';

import 'package:beamer/beamer.dart';
import 'package:cook_it/src/platform/android.dart';
import 'package:cook_it/src/platform/windows.dart';
import 'package:cook_it/src/screens/home/home.dart';
import 'package:cook_it/src/screens/meal/meal.dart';
import 'package:cook_it/src/services/local.dart';
import 'package:cook_it/src/services/remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final baseUrl = Platform.isAndroid
      ? 'http://10.0.2.2:3000/api/'
      : 'http://localhost:3000/api/';

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<RemoteApi>(create: (_) => RemoteApi(dio)),
        RepositoryProvider<LocalApi>(
            create: (_) => LocalApi(dio, baseUrl: baseUrl)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return AndroidApp();
    } else if (Platform.isWindows) {
      return WindowsApp(routerDelegate: _routerDelegate);
    } else {
      return AndroidApp();
    }
  }

  static final _routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => HomeScreen(),
        '/meal/*': (context, state, data) => const MealScreen(),
      },
    ),
  );
}
