import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list123123_item_model.dart';

/// This class defines the variables used in the [treasure_box_confirm_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TreasureBoxConfirmModel extends Equatable {
  TreasureBoxConfirmModel({this.list123123ItemList = const []});

  List<List123123ItemModel> list123123ItemList;

  TreasureBoxConfirmModel copyWith({
    List<List123123ItemModel>? list123123ItemList,
  }) {
    return TreasureBoxConfirmModel(
      list123123ItemList: list123123ItemList ?? this.list123123ItemList,
    );
  }

  @override
  List<Object?> get props => [list123123ItemList];
}
