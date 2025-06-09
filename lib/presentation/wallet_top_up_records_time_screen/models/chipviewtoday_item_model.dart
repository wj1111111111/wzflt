import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipviewtoday_item_widget] screen.

// ignore_for_file: must_be_immutable
class ChipviewtodayItemModel extends Equatable {
  ChipviewtodayItemModel({this.todayOne, this.isSelected}) {
    todayOne = todayOne ?? "lbl_today".tr;
    isSelected = isSelected ?? false;
  }

  String? todayOne;

  bool? isSelected;

  ChipviewtodayItemModel copyWith({String? todayOne, bool? isSelected}) {
    return ChipviewtodayItemModel(
      todayOne: todayOne ?? this.todayOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [todayOne, isSelected];
}
