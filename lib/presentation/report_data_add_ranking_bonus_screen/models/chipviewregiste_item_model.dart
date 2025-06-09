import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipviewregiste_item_widget] screen.

// ignore_for_file: must_be_immutable
class ChipviewregisteItemModel extends Equatable {
  ChipviewregisteItemModel({this.registersOne, this.isSelected}) {
    registersOne = registersOne ?? "lbl_registers".tr;
    isSelected = isSelected ?? false;
  }

  String? registersOne;

  bool? isSelected;

  ChipviewregisteItemModel copyWith({String? registersOne, bool? isSelected}) {
    return ChipviewregisteItemModel(
      registersOne: registersOne ?? this.registersOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [registersOne, isSelected];
}
