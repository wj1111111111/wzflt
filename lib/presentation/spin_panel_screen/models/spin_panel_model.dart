import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list123123_item_model.dart';
import 'listluckwheel_item_model.dart';

/// This class defines the variables used in the [spin_panel_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SpinPanelModel extends Equatable {
  SpinPanelModel({
    this.listluckwheelItemList = const [],
    this.list123123ItemList = const [],
  });

  List<ListluckwheelItemModel> listluckwheelItemList;

  List<List123123ItemModel> list123123ItemList;

  SpinPanelModel copyWith({
    List<ListluckwheelItemModel>? listluckwheelItemList,
    List<List123123ItemModel>? list123123ItemList,
  }) {
    return SpinPanelModel(
      listluckwheelItemList:
          listluckwheelItemList ?? this.listluckwheelItemList,
      list123123ItemList: list123123ItemList ?? this.list123123ItemList,
    );
  }

  @override
  List<Object?> get props => [listluckwheelItemList, list123123ItemList];
}
