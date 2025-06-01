import "package:flutter/material.dart";
import "package:j1_core_base/j1_core_base.dart";

/// A function that builds a widget from a [BuildContext] and a [RouteConfig].
typedef RouteBuilder<T extends RouteConfig> = Widget Function(BuildContext, T);

/// A function that builds a shell widget from a [BuildContext] and a [Widget].
typedef ShellBuilder = Widget Function(BuildContext, Widget);

/// A function that builds an error widget from a [BuildContext].
typedef ErrorBuilder = Widget Function(BuildContext);

/// A function that determines a redirect from a [BuildContext].
typedef Redirect = String? Function(BuildContext);

/// A graph that defines the navigation structure of the app. Rather than using this abstract class, consumers should
/// use a pre-built implementation.
///
/// Implementations:
/// - [GoRouter].
abstract class J1RouteGraph {
  final List<J1RouteGraphNode> routes;
  final String? initialPath;
  final GlobalKey<NavigatorState>? navigatorKey;
  final ErrorBuilder? errorBuilder;

  const J1RouteGraph({
    required this.routes,
    this.initialPath,
    this.navigatorKey,
    this.errorBuilder,
  });

  RouterConfig<Object> buildConfig();
}

sealed class J1RouteGraphNode {
  const J1RouteGraphNode();
}

/// A node of a [J1RouteGraph]. A node consists of a [J1Route], a builder based on the [RouteConfig] for that route,
/// and an optional list of child [J1RouteNode]s.
final class J1RouteNode<T extends RouteConfig> extends J1RouteGraphNode {
  final J1Route<T> route;
  final RouteBuilder<T> _builder;
  final List<J1RouteNode> routes;
  final Redirect? redirect;

  const J1RouteNode({
    required this.route,
    required RouteBuilder<T> builder,
    this.routes = const [],
    this.redirect,
  }) : _builder = builder;

  Widget builder(BuildContext context, RouteConfig config) {
    if (config is! T) {
      // coverage:ignore-start
      // This should be unreachable. If you see this error, please ensure that you are providing a generic paramter.
      throw ArgumentError("J1 Router: received an unexpected config: $config. Expecting a config of type: $T.");
      // coverage:ignore-end
    }

    return _builder(context, config);
  }
}

final class J1ShellNode extends J1RouteGraphNode {
  final ShellBuilder builder;
  final List<J1RouteNode> routes;
  final Redirect? redirect;
  final GlobalKey<NavigatorState>? navigatorKey;
  final GlobalKey<NavigatorState>? parentNavigatorKey;

  const J1ShellNode({
    required this.builder,
    this.routes = const [],
    this.redirect,
    this.navigatorKey,
    this.parentNavigatorKey,
  });
}
