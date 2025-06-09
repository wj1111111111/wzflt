import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridall_item_model.dart';

/// This class is used in the [scrollview_tab_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTabModel extends Equatable {
  ScrollviewTabModel({this.gridallItemList = const []});

  List<GridallItemModel> gridallItemList;

  ScrollviewTabModel copyWith({List<GridallItemModel>? gridallItemList}) {
    return ScrollviewTabModel(
      gridallItemList: gridallItemList ?? this.gridallItemList,
    );
  }

  @override
  List<Object?> get props => [gridallItemList];
}
