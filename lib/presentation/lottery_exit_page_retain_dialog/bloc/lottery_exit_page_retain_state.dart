part of 'lottery_exit_page_retain_bloc.dart';

/// Represents the state of LotteryExitPageRetain in the application.

// ignore_for_file: must_be_immutable
class LotteryExitPageRetainState extends Equatable {
  LotteryExitPageRetainState({this.lotteryExitPageRetainModelObj});

  LotteryExitPageRetainModel? lotteryExitPageRetainModelObj;

  @override
  List<Object?> get props => [lotteryExitPageRetainModelObj];
  LotteryExitPageRetainState copyWith({
    LotteryExitPageRetainModel? lotteryExitPageRetainModelObj,
  }) {
    return LotteryExitPageRetainState(
      lotteryExitPageRetainModelObj:
          lotteryExitPageRetainModelObj ?? this.lotteryExitPageRetainModelObj,
    );
  }
}
