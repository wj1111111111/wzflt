part of 'treasure_box_popup_bloc.dart';

/// Represents the state of TreasureBoxPopup in the application.

// ignore_for_file: must_be_immutable
class TreasureBoxPopupState extends Equatable {
  TreasureBoxPopupState({this.treasureBoxPopupModelObj});

  TreasureBoxPopupModel? treasureBoxPopupModelObj;

  @override
  List<Object?> get props => [treasureBoxPopupModelObj];
  TreasureBoxPopupState copyWith({
    TreasureBoxPopupModel? treasureBoxPopupModelObj,
  }) {
    return TreasureBoxPopupState(
      treasureBoxPopupModelObj:
          treasureBoxPopupModelObj ?? this.treasureBoxPopupModelObj,
    );
  }
}
