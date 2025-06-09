part of 'bonus_details_one_bloc.dart';

/// Represents the state of BonusDetailsOne in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsOneState extends Equatable {
  BonusDetailsOneState({this.bonusDetailsOneModelObj});

  BonusDetailsOneModel? bonusDetailsOneModelObj;

  @override
  List<Object?> get props => [bonusDetailsOneModelObj];
  BonusDetailsOneState copyWith({
    BonusDetailsOneModel? bonusDetailsOneModelObj,
  }) {
    return BonusDetailsOneState(
      bonusDetailsOneModelObj:
          bonusDetailsOneModelObj ?? this.bonusDetailsOneModelObj,
    );
  }
}
