import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipview898333_item_widget] screen.

// ignore_for_file: must_be_immutable
class Chipview898333ItemModel extends Equatable {
  Chipview898333ItemModel({
    this.eightHundredNinetyEightThousandThreeHundredThirtyThree,
    this.isSelected,
  }) {
    eightHundredNinetyEightThousandThreeHundredThirtyThree =
        eightHundredNinetyEightThousandThreeHundredThirtyThree ??
        "lbl_898_333".tr;
    isSelected = isSelected ?? false;
  }

  String? eightHundredNinetyEightThousandThreeHundredThirtyThree;

  bool? isSelected;

  Chipview898333ItemModel copyWith({
    String? eightHundredNinetyEightThousandThreeHundredThirtyThree,
    bool? isSelected,
  }) {
    return Chipview898333ItemModel(
      eightHundredNinetyEightThousandThreeHundredThirtyThree:
          eightHundredNinetyEightThousandThreeHundredThirtyThree ??
          this.eightHundredNinetyEightThousandThreeHundredThirtyThree,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [
    eightHundredNinetyEightThousandThreeHundredThirtyThree,
    isSelected,
  ];
}
