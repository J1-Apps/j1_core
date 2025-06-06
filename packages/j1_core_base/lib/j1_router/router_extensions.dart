import "package:flutter/material.dart";
import "package:get_it/get_it.dart";
import "package:j1_core_base/j1_core_base.dart";

final _locator = GetIt.instance;

/// A set of extension functions to make routing more convenient.
extension RouterExtensions on BuildContext {
  /// Navigates to the given [route].
  void navigate<C extends RouteConfig>(J1Route<C> route, C config) =>
      _locator<J1Router>().navigate(this, route, config);

  /// Pushes the given [route] onto the stack.
  void push<C extends RouteConfig>(J1Route<C> route, C config) => _locator<J1Router>().push(this, route, config);

  /// Pushes the given [route] onto the stack, replacing the current route.
  void pushReplacement<C extends RouteConfig>(J1Route<C> route, C config) =>
      _locator<J1Router>().pushReplacement(this, route, config);

  /// Pops the top level off the current route, if there is one to pop.
  void pop<T extends Object?>([T? result]) => _locator<J1Router>().pop(this, result);

  /// Pops the top level off the current route, if there is one to pop.
  bool canPop() => _locator<J1Router>().canPop(this);
}
