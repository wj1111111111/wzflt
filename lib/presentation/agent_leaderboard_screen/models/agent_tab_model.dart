import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listheadingthre_item_model.dart';

/// This class is used in the [agent_tab_page] screen.

// ignore_for_file: must_be_immutable
class AgentTabModel extends Equatable {
  AgentTabModel({this.listheadingthreItemList = const []});

  List<ListheadingthreItemModel> listheadingthreItemList;

  AgentTabModel copyWith({
    List<ListheadingthreItemModel>? listheadingthreItemList,
  }) {
    return AgentTabModel(
      listheadingthreItemList:
          listheadingthreItemList ?? this.listheadingthreItemList,
    );
  }

  @override
  List<Object?> get props => [listheadingthreItemList];
}
