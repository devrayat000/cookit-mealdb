import 'package:beamer/beamer.dart';
import 'package:cook_it/src/theme/light.dart';
import 'package:fluent_ui/fluent_ui.dart';

class WindowsApp extends StatelessWidget {
  final BeamerDelegate routerDelegate;

  const WindowsApp({
    Key? key,
    required this.routerDelegate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      title: 'Cookit Windows',
      debugShowCheckedModeBanner: false,
      color: Colors.magenta,
      theme: lightTheme,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
        alwaysBeamBack: true,
        // onBack: (delegate) => SynchronousFuture(delegate.beamBack()),
      ),
    );
  }
}
