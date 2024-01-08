import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/button_app_bar/logic/bottom_app_bar_bloc.dart';
import 'package:gallery_app/src/features/button_app_bar/logic/bottom_app_bar_state.dart';
import 'package:gallery_app/src/features/button_app_bar/view/bottom_app_bar_control.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/section.dart';

/// Flutter code sample for [Scaffold]
class ButtonAppBarView extends StatelessWidget {
  const ButtonAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomAppBarBloc>(
        create: (BuildContext context) => BottomAppBarBloc(),
        child: BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
            buildWhen: (previous, current) => previous.isChanged(current),
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Bottom App Bar View',
                    style: TextStyle(
                        color: AppColors.slate_50,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: AppColors.sky_500,
                  leading: const Icon(Icons.arrow_back),
                  iconTheme: const IconThemeData(
                    color: AppColors.slate_50,
                  ),
                ),
                body: const BottomAppBarControl(),
                bottomNavigationBar: BottomAppBar(
                  shape:
                      state.isNotch ? const CircularNotchedRectangle() : null,
                  child: _buildRowIcon(),
                ),
                floatingActionButton: state.isfloatActionButton
                    ? FloatingActionButton(
                        shape: const CircleBorder(),
                        backgroundColor: AppColors.blue_500,
                        onPressed: () {},
                        child: const Icon(Icons.add, color: AppColors.slate_50),
                      )
                    : null,
                floatingActionButtonLocation:
                    state.floatingActionButtonLocation,
              );
            }));
  }

  Widget _buildRowIcon() {
    return Row(
      children: [
        XSection(
            child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        )),
        XSection(
            child: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        )),
        XSection(
            child: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        )),
      ],
    );
  }
}
