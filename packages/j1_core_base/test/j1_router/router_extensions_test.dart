import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:get_it/get_it.dart";
import "package:j1_core_base/j1_core_base.dart";
import "package:mocktail/mocktail.dart";

import "test_wrapper.dart";

class MockRouter extends Mock implements J1Router {}

class MockRoute extends Mock implements J1Route {}

class MockBuildContext extends Fake implements BuildContext {}

const _homeRoute = J1Route<EmptyRouteConfig>(parts: [PathSegment("/")], configParser: EmptyRouteConfig.parser);

final _locator = GetIt.instance;

void main() {
  final router = MockRouter();
  final RouteConfig config = EmptyRouteConfig();

  setUpAll(() {
    _locator.registerSingleton<J1Router>(router);
    registerFallbackValue(MockBuildContext());
    registerFallbackValue(_homeRoute);
    registerFallbackValue(config);
  });

  setUp(() {
    reset(router);
  });

  group("Router Extensions", () {
    testWidgets("calls navigate, pop, and canPop", (tester) async {
      when(() => router.navigate<EmptyRouteConfig>(any(), any(), any())).thenAnswer((_) => Future.value("test"));
      when(() => router.push<EmptyRouteConfig>(any(), any(), any())).thenAnswer((_) => Future.value("test"));
      when(() => router.pushReplacement<EmptyRouteConfig>(any(), any(), any())).thenAnswer((_) => Future.value("test"));
      when(() => router.pop(any())).thenReturn(null);
      when(() => router.canPop(any())).thenReturn(true);

      await tester.pumpWidget(
        TestWrapper(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  IconButton(
                    onPressed: () => context.navigate(_homeRoute, const EmptyRouteConfig()),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () => context.push(_homeRoute, const EmptyRouteConfig()),
                    icon: const Icon(Icons.push_pin),
                  ),
                  IconButton(
                    onPressed: () => context.pushReplacement(_homeRoute, const EmptyRouteConfig()),
                    icon: const Icon(Icons.push_pin_outlined),
                  ),
                  IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_forward)),
                  IconButton(onPressed: () => context.canPop(), icon: const Icon(Icons.arrow_upward)),
                ],
              );
            },
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.arrow_back));
      await tester.tap(find.byIcon(Icons.arrow_forward));
      await tester.tap(find.byIcon(Icons.arrow_upward));
      await tester.tap(find.byIcon(Icons.push_pin));
      await tester.tap(find.byIcon(Icons.push_pin_outlined));

      verify(() => router.navigate<EmptyRouteConfig>(any(), any(), any())).called(1);
      verify(() => router.push<EmptyRouteConfig>(any(), any(), any())).called(1);
      verify(() => router.pushReplacement<EmptyRouteConfig>(any(), any(), any())).called(1);
      verify(() => router.pop(any())).called(1);
      verify(() => router.canPop(any())).called(1);
    });
  });
}
