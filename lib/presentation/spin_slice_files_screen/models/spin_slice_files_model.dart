import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list123123_item_model.dart';
import 'listluck_wheel_item_model.dart';

/// This class defines the variables used in the [spin_slice_files_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SpinSliceFilesModel extends Equatable {
  SpinSliceFilesModel({
    this.listluckWheelItemList = const [],
    this.list123123ItemList = const [],
  });

  List<ListluckWheelItemModel> listluckWheelItemList;

  List<List123123ItemModel> list123123ItemList;

  SpinSliceFilesModel copyWith({
    List<ListluckWheelItemModel>? listluckWheelItemList,
    List<List123123ItemModel>? list123123ItemList,
  }) {
    return SpinSliceFilesModel(
      listluckWheelItemList:
          listluckWheelItemList ?? this.listluckWheelItemList,
      list123123ItemList: list123123ItemList ?? this.list123123ItemList,
    );
  }

  @override
  List<Object?> get props => [listluckWheelItemList, list123123ItemList];
}
