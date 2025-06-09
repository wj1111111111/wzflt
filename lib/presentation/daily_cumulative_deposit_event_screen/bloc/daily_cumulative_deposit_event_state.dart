part of 'daily_cumulative_deposit_event_bloc.dart';

/// Represents the state of DailyCumulativeDepositEvent in the application.

// ignore_for_file: must_be_immutable
class DailyCumulativeDepositEventState extends Equatable {
  DailyCumulativeDepositEventState({this.dailyCumulativeDepositEventModelObj});

  DailyCumulativeDepositEventModel? dailyCumulativeDepositEventModelObj;

  @override
  List<Object?> get props => [dailyCumulativeDepositEventModelObj];
  DailyCumulativeDepositEventState copyWith({
    DailyCumulativeDepositEventModel? dailyCumulativeDepositEventModelObj,
  }) {
    return DailyCumulativeDepositEventState(
      dailyCumulativeDepositEventModelObj:
          dailyCumulativeDepositEventModelObj ??
          this.dailyCumulativeDepositEventModelObj,
    );
  }
}
