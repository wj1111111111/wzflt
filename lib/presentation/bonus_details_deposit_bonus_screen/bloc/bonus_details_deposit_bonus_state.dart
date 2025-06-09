part of 'bonus_details_deposit_bonus_bloc.dart';

/// Represents the state of BonusDetailsDepositBonus in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsDepositBonusState extends Equatable {
  BonusDetailsDepositBonusState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.scrollviewTab1ModelObj,
    this.bonusDetailsDepositBonusModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  BonusDetailsDepositBonusModel? bonusDetailsDepositBonusModelObj;

  ScrollviewTab1Model? scrollviewTab1ModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    scrollviewTab1ModelObj,
    bonusDetailsDepositBonusModelObj,
  ];
  BonusDetailsDepositBonusState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    ScrollviewTab1Model? scrollviewTab1ModelObj,
    BonusDetailsDepositBonusModel? bonusDetailsDepositBonusModelObj,
  }) {
    return BonusDetailsDepositBonusState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      scrollviewTab1ModelObj:
          scrollviewTab1ModelObj ?? this.scrollviewTab1ModelObj,
      bonusDetailsDepositBonusModelObj:
          bonusDetailsDepositBonusModelObj ??
          this.bonusDetailsDepositBonusModelObj,
    );
  }
}
