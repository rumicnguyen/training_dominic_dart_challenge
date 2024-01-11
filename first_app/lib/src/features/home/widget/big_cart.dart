import 'package:first_app/src/features/home/logic/home_bloc.dart';
import 'package:first_app/src/features/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium?.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
        color: theme.colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) =>
                previous.wordPair != current.wordPair,
            builder: (context, state) => Text(state.wordPair.asPascalCase,
                style: style, semanticsLabel: "${state.wordPair.first} ${state.wordPair.second}"),
          ),
        ));
  }
}
