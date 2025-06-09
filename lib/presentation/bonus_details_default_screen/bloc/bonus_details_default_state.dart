part of 'bonus_details_default_bloc.dart';

/// Represents the state of BonusDetailsDefault in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsDefaultState extends Equatable {
  BonusDetailsDefaultState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.scrollviewTab4ModelObj,
    this.bonusDetailsDefaultModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  BonusDetailsDefaultModel? bonusDetailsDefaultModelObj;

  ScrollviewTab4Model? scrollviewTab4ModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    scrollviewTab4ModelObj,
    bonusDetailsDefaultModelObj,
  ];
  BonusDetailsDefaultState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    ScrollviewTab4Model? scrollviewTab4ModelObj,
    BonusDetailsDefaultModel? bonusDetailsDefaultModelObj,
  }) {
    return BonusDetailsDefaultState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      scrollviewTab4ModelObj:
          scrollviewTab4ModelObj ?? this.scrollviewTab4ModelObj,
      bonusDetailsDefaultModelObj:
          bonusDetailsDefaultModelObj ?? this.bonusDetailsDefaultModelObj,
    );
  }
}
