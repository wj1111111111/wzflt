import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listfirst_item_model.dart';

/// This class is used in the [couponcenter_tab_page] screen.

// ignore_for_file: must_be_immutable
class CouponcenterTabModel extends Equatable {
  CouponcenterTabModel({this.listfirstItemList = const []});

  List<ListfirstItemModel> listfirstItemList;

  CouponcenterTabModel copyWith({List<ListfirstItemModel>? listfirstItemList}) {
    return CouponcenterTabModel(
      listfirstItemList: listfirstItemList ?? this.listfirstItemList,
    );
  }

  @override
  List<Object?> get props => [listfirstItemList];
}
