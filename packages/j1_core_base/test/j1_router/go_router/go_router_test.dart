import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:get_it/get_it.dart";
import "package:j1_core_base/j1_core_base.dart";

import "../j1_route_test.dart";

final _testRouteGraph = GoRouteGraph(
  routes: [
    J1ShellNode(
      builder: (context, child) => child,
      routes: [
        J1RouteNode<EmptyRouteConfig>(
          route: homeRoute,
          builder: (context, homeConfig) {
            return Center(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () => context.navigate(
                      testRoute.build(
                        const TestRouteConfig(path0: "test", path1: true, query0: "testQuery", query1: 42),
                      ),
                    ),
                    icon: const Icon(Icons.arrow_forward),
                  ),
                  IconButton(
                    onPressed: () => context.navigate(redirectRoute.build(const EmptyRouteConfig())),
                    icon: const Icon(Icons.arrow_upward),
                  ),
                  IconButton(
                    onPressed: () => context.navigate(redirectShellRoute.build(const EmptyRouteConfig())),
                    icon: const Icon(Icons.shield),
                  ),
                  IconButton(
                    onPressed: () => context.navigate("/invalid"),
                    icon: const Icon(Icons.error),
                  ),
                ],
              ),
            );
          },
          routes: [
            J1RouteNode<TestRouteConfig>(
              route: testRoute,
              builder: (context, testConfig) {
                return Column(
                  children: [
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(context.canPop() ? Icons.arrow_back : Icons.arrow_forward),
                    ),
                    IconButton(
                      onPressed: () => context.navigate(homeRoute.build(const EmptyRouteConfig())),
                      icon: const Icon(Icons.arrow_downward),
                    ),
                    Text("path0: ${testConfig.path0}"),
                    Text("path1: ${testConfig.path1}"),
                    Text("query0: ${testConfig.query0}"),
                    Text("query1: ${testConfig.query1}"),
                  ],
                );
              },
            ),
            J1RouteNode<EmptyRouteConfig>(
              route: redirectRoute,
              builder: (context, config) {
                return Center(
                  child: IconButton(
                    onPressed: () => context.navigate(homeRoute.build(const EmptyRouteConfig())),
                    icon: const Icon(Icons.arrow_back),
                  ),
                );
              },
              redirect: (_) => homeRoute.build(const EmptyRouteConfig()),
            ),
          ],
        ),
      ],
    ),
    J1ShellNode(
      builder: (context, child) => child,
      routes: [
        J1RouteNode<EmptyRouteConfig>(
          route: redirectShellRoute,
          builder: (context, homeConfig) => const Center(child: Text("redirect shell")),
        ),
      ],
      redirect: (_) => homeRoute.build(const EmptyRouteConfig()),
    ),
  ],
  errorBuilder: (context) => const Scaffold(body: Text("error")),
);

void main() {
  setUpAll(() {
    GetIt.instance.registerSingleton<J1Router>(GoRouter());
  });

  group("Go Router", () {
    testWidgets("navigates to a route, pops off a route, and handles canPop", (tester) async {
      await tester.pumpWidget(
        MaterialApp.router(routerConfig: _testRouteGraph.buildConfig()),
      );

      final homeNavFinder = find.byIcon(Icons.arrow_forward);
      final testNavFinder0 = find.byIcon(Icons.arrow_back);
      final testNavFinder1 = find.byIcon(Icons.arrow_downward);

      expect(homeNavFinder, findsOneWidget);
      expect(testNavFinder0, findsNothing);

      await tester.tap(homeNavFinder);
      await tester.pumpAndSettle();

      expect(find.text("path0: test"), findsOneWidget);
      expect(find.text("path1: true"), findsOneWidget);
      expect(find.text("query0: testQuery"), findsOneWidget);
      expect(find.text("query1: 42"), findsOneWidget);

      expect(homeNavFinder, findsNothing);
      expect(testNavFinder0, findsOneWidget);

      await tester.tap(testNavFinder0);
      await tester.pumpAndSettle();

      expect(homeNavFinder, findsOneWidget);
      expect(testNavFinder0, findsNothing);

      await tester.tap(homeNavFinder);
      await tester.pumpAndSettle();

      expect(homeNavFinder, findsNothing);
      expect(testNavFinder1, findsOneWidget);

      await tester.tap(testNavFinder1);
      await tester.pumpAndSettle();

      expect(homeNavFinder, findsOneWidget);
      expect(testNavFinder0, findsNothing);
    });

    testWidgets("redirects to a route", (tester) async {
      await tester.pumpWidget(MaterialApp.router(routerConfig: _testRouteGraph.buildConfig()));

      final homeNavFinder = find.byIcon(Icons.arrow_upward);
      final testNavFinder = find.byIcon(Icons.arrow_back);

      expect(homeNavFinder, findsOneWidget);
      expect(testNavFinder, findsNothing);

      await tester.tap(homeNavFinder);
      await tester.pumpAndSettle();

      // We should be redirected back home.
      expect(homeNavFinder, findsOneWidget);
      expect(testNavFinder, findsNothing);
    });

    testWidgets("redirects to a route from a shell", (tester) async {
      await tester.pumpWidget(MaterialApp.router(routerConfig: _testRouteGraph.buildConfig()));

      final homeNavFinder = find.byIcon(Icons.shield);
      final redirectNavFinder = find.text("redirect shell");

      expect(homeNavFinder, findsOneWidget);
      expect(redirectNavFinder, findsNothing);

      await tester.tap(homeNavFinder);
      await tester.pumpAndSettle();

      // We should be redirected back home.
      expect(homeNavFinder, findsOneWidget);
      expect(redirectNavFinder, findsNothing);
    });

    testWidgets("handles errors", (tester) async {
      await tester.pumpWidget(MaterialApp.router(routerConfig: _testRouteGraph.buildConfig()));

      final errorNavFinder = find.byIcon(Icons.error);

      await tester.tap(errorNavFinder);
      await tester.pumpAndSettle();

      expect(find.text("error"), findsOneWidget);
    });
  });
}
