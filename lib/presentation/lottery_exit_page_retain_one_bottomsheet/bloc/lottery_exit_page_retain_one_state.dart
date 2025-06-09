part of 'lottery_exit_page_retain_one_bloc.dart';

/// Represents the state of LotteryExitPageRetainOne in the application.

// ignore_for_file: must_be_immutable
class LotteryExitPageRetainOneState extends Equatable {
  LotteryExitPageRetainOneState({this.lotteryExitPageRetainOneModelObj});

  LotteryExitPageRetainOneModel? lotteryExitPageRetainOneModelObj;

  @override
  List<Object?> get props => [lotteryExitPageRetainOneModelObj];
  LotteryExitPageRetainOneState copyWith({
    LotteryExitPageRetainOneModel? lotteryExitPageRetainOneModelObj,
  }) {
    return LotteryExitPageRetainOneState(
      lotteryExitPageRetainOneModelObj:
          lotteryExitPageRetainOneModelObj ??
          this.lotteryExitPageRetainOneModelObj,
    );
  }
}
