part of 'bonus_details_qualified_user_bloc.dart';

/// Represents the state of BonusDetailsQualifiedUser in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsQualifiedUserState extends Equatable {
  BonusDetailsQualifiedUserState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.scrollviewTab2ModelObj,
    this.bonusDetailsQualifiedUserModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  BonusDetailsQualifiedUserModel? bonusDetailsQualifiedUserModelObj;

  ScrollviewTab2Model? scrollviewTab2ModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    scrollviewTab2ModelObj,
    bonusDetailsQualifiedUserModelObj,
  ];
  BonusDetailsQualifiedUserState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    ScrollviewTab2Model? scrollviewTab2ModelObj,
    BonusDetailsQualifiedUserModel? bonusDetailsQualifiedUserModelObj,
  }) {
    return BonusDetailsQualifiedUserState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      scrollviewTab2ModelObj:
          scrollviewTab2ModelObj ?? this.scrollviewTab2ModelObj,
      bonusDetailsQualifiedUserModelObj:
          bonusDetailsQualifiedUserModelObj ??
          this.bonusDetailsQualifiedUserModelObj,
    );
  }
}
