import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'grid94bdf4d8739_item_model.dart';
import 'list94bdf4d8739_item_model.dart';

/// This class defines the variables used in the [wheel_spin_main_rules_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainRulesModel extends Equatable {
  WheelSpinMainRulesModel({
    this.grid94bdf4d8739ItemList = const [],
    this.list94bdf4d8739ItemList = const [],
  });

  List<Grid94bdf4d8739ItemModel> grid94bdf4d8739ItemList;

  List<List94bdf4d8739ItemModel> list94bdf4d8739ItemList;

  WheelSpinMainRulesModel copyWith({
    List<Grid94bdf4d8739ItemModel>? grid94bdf4d8739ItemList,
    List<List94bdf4d8739ItemModel>? list94bdf4d8739ItemList,
  }) {
    return WheelSpinMainRulesModel(
      grid94bdf4d8739ItemList:
          grid94bdf4d8739ItemList ?? this.grid94bdf4d8739ItemList,
      list94bdf4d8739ItemList:
          list94bdf4d8739ItemList ?? this.list94bdf4d8739ItemList,
    );
  }

  @override
  List<Object?> get props => [grid94bdf4d8739ItemList, list94bdf4d8739ItemList];
}
