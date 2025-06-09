part of 'treasure_box_confirm_bloc.dart';

/// Represents the state of TreasureBoxConfirm in the application.

// ignore_for_file: must_be_immutable
class TreasureBoxConfirmState extends Equatable {
  TreasureBoxConfirmState({this.treasureBoxConfirmModelObj});

  TreasureBoxConfirmModel? treasureBoxConfirmModelObj;

  @override
  List<Object?> get props => [treasureBoxConfirmModelObj];
  TreasureBoxConfirmState copyWith({
    TreasureBoxConfirmModel? treasureBoxConfirmModelObj,
  }) {
    return TreasureBoxConfirmState(
      treasureBoxConfirmModelObj:
          treasureBoxConfirmModelObj ?? this.treasureBoxConfirmModelObj,
    );
  }
}
