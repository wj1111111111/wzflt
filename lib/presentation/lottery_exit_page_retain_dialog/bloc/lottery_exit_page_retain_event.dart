part of 'lottery_exit_page_retain_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LotteryExitPageRetain widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LotteryExitPageRetainEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LotteryExitPageRetain widget is first created.
class LotteryExitPageRetainInitialEvent extends LotteryExitPageRetainEvent {
  @override
  List<Object?> get props => [];
}
