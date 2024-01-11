import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_bloc.dart';
import 'package:gallery_app/src/features/row_column/view/row_column_screen.dart';
import 'package:gallery_app/src/features/row_column/view/row_column_control.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RowColumnBloc>(
      create: (_) => RowColumnBloc(),
      child: Scaffold(
        appBar: const XAppBar(
          title: 'Row & Column',
        ),
        body: Container(
          color: AppColors.gray_200,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [RowColumnScreen(), RowColumnControl()],
          ),
        ),
      ),
    );
  }
}
