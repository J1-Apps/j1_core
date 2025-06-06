library;

export "go_router/j1_router_go.dart";
export "j1_route_graph.dart";
export "j1_route.dart";
export "j1_router.dart";
export "router_extensions.dart";

import "package:flutter/material.dart";
import "package:j1_core_base/j1_router/j1_route.dart";

/// A class that handles routing for an app.
abstract class J1Router {
  /// Navigates to the given [route].
  void navigateRaw(BuildContext context, String route);

  void navigate<C extends RouteConfig>(BuildContext context, J1Route<C> route, C config) =>
      navigateRaw(context, route.build(config));

  /// Pushes the given [route] onto the stack.
  void pushRaw(BuildContext context, String route);

  void push<C extends RouteConfig>(BuildContext context, J1Route<C> route, C config) =>
      pushRaw(context, route.build(config));

  /// Pushes the given [route] onto the stack, replacing the current route.
  void pushReplacementRaw(BuildContext context, String route);

  void pushReplacement<C extends RouteConfig>(BuildContext context, J1Route<C> route, C config) =>
      pushReplacementRaw(context, route.build(config));

  /// Pops the top level off the current route, if there is one to pop.
  void pop<T extends Object?>(BuildContext context, [T? result]);

  /// Pops the top level off the current route, if there is one to pop.
  bool canPop(BuildContext context);
}
