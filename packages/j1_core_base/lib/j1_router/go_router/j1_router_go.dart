export "j1_route_graph_go.dart";

import "package:flutter/material.dart";
import "package:go_router/go_router.dart" as go;
import "package:j1_core_base/j1_core_base.dart";

class J1RouterGo extends J1Router {
  @override
  void navigateRaw(BuildContext context, String route) => go.GoRouter.of(context).go(route);

  @override
  void pushRaw(BuildContext context, String route) => go.GoRouter.of(context).push(route);

  @override
  void pushReplacementRaw(BuildContext context, String route) => go.GoRouter.of(context).pushReplacement(route);

  @override
  void pop<T extends Object?>(BuildContext context, [T? result]) => go.GoRouter.of(context).pop(result);

  @override
  bool canPop(BuildContext context) => go.GoRouter.of(context).canPop();
}
