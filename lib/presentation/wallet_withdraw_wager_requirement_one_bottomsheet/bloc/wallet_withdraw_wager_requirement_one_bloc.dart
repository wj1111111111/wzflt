import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_withdraw_wager_requirement_one_model.dart';
part 'wallet_withdraw_wager_requirement_one_event.dart';
part 'wallet_withdraw_wager_requirement_one_state.dart';

/// A bloc that manages the state of a WalletWithdrawWagerRequirementOne according to the event that is dispatched to it.
class WalletWithdrawWagerRequirementOneBloc
    extends
        Bloc<
          WalletWithdrawWagerRequirementOneEvent,
          WalletWithdrawWagerRequirementOneState
        > {
  WalletWithdrawWagerRequirementOneBloc(
    WalletWithdrawWagerRequirementOneState initialState,
  ) : super(initialState) {
    on<WalletWithdrawWagerRequirementOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletWithdrawWagerRequirementOneInitialEvent event,
    Emitter<WalletWithdrawWagerRequirementOneState> emit,
  ) async {}
}
