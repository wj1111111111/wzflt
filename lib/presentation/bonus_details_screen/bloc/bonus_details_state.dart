part of 'bonus_details_bloc.dart';

/// Represents the state of BonusDetails in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsState extends Equatable {
  BonusDetailsState({this.bonusDetailsModelObj});

  BonusDetailsModel? bonusDetailsModelObj;

  @override
  List<Object?> get props => [bonusDetailsModelObj];
  BonusDetailsState copyWith({BonusDetailsModel? bonusDetailsModelObj}) {
    return BonusDetailsState(
      bonusDetailsModelObj: bonusDetailsModelObj ?? this.bonusDetailsModelObj,
    );
  }
}
