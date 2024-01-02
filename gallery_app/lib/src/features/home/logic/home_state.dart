import 'package:equatable/equatable.dart';

import 'package:gallery_app/src/features/home/model/view_item_model.dart';

class HomeState extends Equatable {
  final List<ViewItemModel> lists;
  const HomeState({
    required this.lists,
  });

  HomeState copyWith({
    List<ViewItemModel>? lists,
  }) {
    return HomeState(
      lists: lists ?? this.lists,
    );
  }

  @override
  List<Object> get props => [lists];
}
