import 'package:flutter/cupertino.dart';
import 'package:go_router/src/go_router_delegate.dart' show GoRouterDelegate;

class GoBackButtonDispatcher extends BackButtonDispatcher {
  final GoRouterDelegate routerDelegate;

  GoBackButtonDispatcher({required this.routerDelegate});

  @override
  Future<bool> invokeCallback(Future<bool> defaultValue) {
    return routerDelegate.popRoute();
  }
}
