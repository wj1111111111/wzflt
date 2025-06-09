import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/lottery_exit_page_retain_model.dart';
part 'lottery_exit_page_retain_event.dart';
part 'lottery_exit_page_retain_state.dart';

/// A bloc that manages the state of a LotteryExitPageRetain according to the event that is dispatched to it.
class LotteryExitPageRetainBloc
    extends Bloc<LotteryExitPageRetainEvent, LotteryExitPageRetainState> {
  LotteryExitPageRetainBloc(LotteryExitPageRetainState initialState)
    : super(initialState) {
    on<LotteryExitPageRetainInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LotteryExitPageRetainInitialEvent event,
    Emitter<LotteryExitPageRetainState> emit,
  ) async {}
}
