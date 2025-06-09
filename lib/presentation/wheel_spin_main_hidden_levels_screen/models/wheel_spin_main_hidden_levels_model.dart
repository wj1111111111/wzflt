import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listspacer_item_model.dart';

/// This class defines the variables used in the [wheel_spin_main_hidden_levels_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainHiddenLevelsModel extends Equatable {
  WheelSpinMainHiddenLevelsModel({this.listspacerItemList = const []});

  List<ListspacerItemModel> listspacerItemList;

  WheelSpinMainHiddenLevelsModel copyWith({
    List<ListspacerItemModel>? listspacerItemList,
  }) {
    return WheelSpinMainHiddenLevelsModel(
      listspacerItemList: listspacerItemList ?? this.listspacerItemList,
    );
  }

  @override
  List<Object?> get props => [listspacerItemList];
}
