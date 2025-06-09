part of 'bonus_details_achievement_bloc.dart';

/// Represents the state of BonusDetailsAchievement in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsAchievementState extends Equatable {
  BonusDetailsAchievementState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.scrollviewTab3ModelObj,
    this.bonusDetailsAchievementModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  BonusDetailsAchievementModel? bonusDetailsAchievementModelObj;

  ScrollviewTab3Model? scrollviewTab3ModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    scrollviewTab3ModelObj,
    bonusDetailsAchievementModelObj,
  ];
  BonusDetailsAchievementState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    ScrollviewTab3Model? scrollviewTab3ModelObj,
    BonusDetailsAchievementModel? bonusDetailsAchievementModelObj,
  }) {
    return BonusDetailsAchievementState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      scrollviewTab3ModelObj:
          scrollviewTab3ModelObj ?? this.scrollviewTab3ModelObj,
      bonusDetailsAchievementModelObj:
          bonusDetailsAchievementModelObj ??
          this.bonusDetailsAchievementModelObj,
    );
  }
}
