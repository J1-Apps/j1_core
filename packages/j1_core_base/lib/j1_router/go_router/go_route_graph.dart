import "package:flutter/material.dart";
import "package:go_router/go_router.dart" as go;
import "package:j1_core_base/j1_core_base.dart";

class GoRouteGraph extends J1RouteGraph {
  const GoRouteGraph({
    required super.routes,
    super.initialPath,
    super.navigatorKey,
    super.errorBuilder,
  });

  @override
  RouterConfig<Object> buildConfig() {
    final errorBuilder = this.errorBuilder;

    return go.GoRouter(
      routes: routes.map(_buildRoute).toList(),
      initialLocation: initialPath,
      navigatorKey: navigatorKey,
      errorBuilder: errorBuilder != null ? (context, _) => errorBuilder(context) : null,
    );
  }
}

go.RouteBase _buildRoute(J1RouteGraphNode node) {
  switch (node) {
    case final J1RouteNode node:
      return _buildNodeRoute(node);
    case final J1ShellNode node:
      return _buildShellRoute(node);
  }
}

go.GoRoute _buildNodeRoute(J1RouteNode node) {
  final redirect = node.redirect;

  return go.GoRoute(
    path: node.route.relativePath,
    builder: (context, state) => node.builder(
      context,
      node.route.configParser(
        pathParams: state.pathParameters,
        queryParams: state.uri.queryParameters,
      ),
    ),
    routes: node.routes.map(_buildRoute).toList(),
    redirect: redirect != null ? (context, _) => redirect(context) : null,
  );
}

go.ShellRoute _buildShellRoute(J1ShellNode node) {
  final redirect = node.redirect;

  return go.ShellRoute(
    routes: node.routes.map(_buildRoute).toList(),
    builder: (context, state, child) => node.builder(context, child),
    redirect: redirect != null ? (context, _) => redirect(context) : null,
    navigatorKey: node.navigatorKey,
    parentNavigatorKey: node.parentNavigatorKey,
  );
}
