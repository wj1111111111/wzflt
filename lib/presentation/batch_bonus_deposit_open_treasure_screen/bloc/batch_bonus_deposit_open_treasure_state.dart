part of 'batch_bonus_deposit_open_treasure_bloc.dart';

/// Represents the state of BatchBonusDepositOpenTreasure in the application.

// ignore_for_file: must_be_immutable
class BatchBonusDepositOpenTreasureState extends Equatable {
  BatchBonusDepositOpenTreasureState({
    this.batchBonusDepositOpenTreasureModelObj,
  });

  BatchBonusDepositOpenTreasureModel? batchBonusDepositOpenTreasureModelObj;

  @override
  List<Object?> get props => [batchBonusDepositOpenTreasureModelObj];
  BatchBonusDepositOpenTreasureState copyWith({
    BatchBonusDepositOpenTreasureModel? batchBonusDepositOpenTreasureModelObj,
  }) {
    return BatchBonusDepositOpenTreasureState(
      batchBonusDepositOpenTreasureModelObj:
          batchBonusDepositOpenTreasureModelObj ??
          this.batchBonusDepositOpenTreasureModelObj,
    );
  }
}
