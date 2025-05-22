import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:j1_theme/j1_theme.dart";

class J1ThemeBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ThemeData theme) builder;

  const J1ThemeBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<J1ThemeBloc, J1ThemeState>(
      builder: (context, state) {
        final colorScheme = state.colorScheme.toMaterial();
        final textTheme = state.textTheme.toMaterial();
        final pageTransition = state.pageTransition.toMaterial();

        return builder(
          context,
          ThemeData(
            brightness: colorScheme.brightness,
            colorScheme: colorScheme,
            textTheme: textTheme,
            pageTransitionsTheme: pageTransition,
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
