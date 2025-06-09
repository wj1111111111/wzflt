part of 'birthday_bonus_bloc.dart';

/// Represents the state of BirthdayBonus in the application.

// ignore_for_file: must_be_immutable
class BirthdayBonusState extends Equatable {
  BirthdayBonusState({this.birthdayBonusModelObj});

  BirthdayBonusModel? birthdayBonusModelObj;

  @override
  List<Object?> get props => [birthdayBonusModelObj];
  BirthdayBonusState copyWith({BirthdayBonusModel? birthdayBonusModelObj}) {
    return BirthdayBonusState(
      birthdayBonusModelObj:
          birthdayBonusModelObj ?? this.birthdayBonusModelObj,
    );
  }
}
