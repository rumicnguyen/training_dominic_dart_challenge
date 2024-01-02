import 'package:flutter/foundation.dart';
import 'package:gallery_app/src/features/alert/view/alert_view.dart';
import 'package:gallery_app/src/features/button/view/button_view.dart';
import 'package:gallery_app/src/features/button_app_bar/view/button_app_bar_view.dart';
import 'package:gallery_app/src/features/card/view/card_view.dart';
import 'package:gallery_app/src/features/cupertino/view/cupertino_view.dart';
import 'package:gallery_app/src/features/home/view/home_view.dart';
import 'package:gallery_app/src/features/list_title/view/list_title_view.dart';
import 'package:gallery_app/src/features/row_column/view/row_column_view.dart';
import 'package:gallery_app/src/features/stack_align/view/stack_align_view.dart';
import 'package:gallery_app/src/features/typography/view/typography_view.dart';
import 'package:gallery_app/src/features/wrap_chip/view/wrap_chip_view.dart';
import 'package:gallery_app/src/router/route_name.dart';
import 'package:go_router/go_router.dart';

import '../features/list/view/list_view.dart';

class AppRouter {
  final router = GoRouter(
      initialLocation: AppRouteName.home.path,
      debugLogDiagnostics: kDebugMode,
      routes: <RouteBase>[
        GoRoute(
            path: AppRouteName.home.path,
            name: AppRouteName.home.name,
            builder: (_, __) => const HomeView(),
            routes: <RouteBase>[
              GoRoute(
                  path: AppRouteName.cupertino.subPath,
                  name: AppRouteName.cupertino.subPath,
                  builder: (_, __) => const CupertinoView()),
              GoRoute(
                  path: AppRouteName.typography.subPath,
                  name: AppRouteName.typography.subPath,
                  builder: (_, __) => const TypographyView()),
              GoRoute(
                  path: AppRouteName.buttonAppBar.subPath,
                  name: AppRouteName.buttonAppBar.subPath,
                  builder: (_, __) => const ButtonAppBarView()),
              GoRoute(
                  path: AppRouteName.button.subPath,
                  name: AppRouteName.button.subPath,
                  builder: (_, __) => const ButtonView()),
              GoRoute(
                  path: AppRouteName.list.subPath,
                  name: AppRouteName.list.subPath,
                  builder: (_, __) => const XListView()),
              GoRoute(
                  path: AppRouteName.card.subPath,
                  name: AppRouteName.card.subPath,
                  builder: (_, __) => const CardView()),
              GoRoute(
                  path: AppRouteName.listTitle.subPath,
                  name: AppRouteName.listTitle.subPath,
                  builder: (_, __) => const ListTitleView()),
              GoRoute(
                  path: AppRouteName.alert.subPath,
                  name: AppRouteName.alert.subPath,
                  builder: (_, __) => const AlertView()),
              GoRoute(
                  path: AppRouteName.textField.subPath,
                  name: AppRouteName.textField.subPath,
                  builder: (_, __) => const CupertinoView()),
              GoRoute(
                  path: AppRouteName.rowColumn.subPath,
                  name: AppRouteName.rowColumn.subPath,
                  builder: (_, __) => const RowColumnView()),
              GoRoute(
                  path: AppRouteName.wrapChip.subPath,
                  name: AppRouteName.wrapChip.subPath,
                  builder: (_, __) => const WrapChipView()),
              GoRoute(
                  path: AppRouteName.stackAlign.subPath,
                  name: AppRouteName.stackAlign.subPath,
                  builder: (_, __) => const StackAlignView()),
            ])
      ]);
}
