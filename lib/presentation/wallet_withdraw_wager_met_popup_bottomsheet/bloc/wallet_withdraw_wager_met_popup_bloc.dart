import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_withdraw_wager_met_popup_model.dart';
part 'wallet_withdraw_wager_met_popup_event.dart';
part 'wallet_withdraw_wager_met_popup_state.dart';

/// A bloc that manages the state of a WalletWithdrawWagerMetPopup according to the event that is dispatched to it.
class WalletWithdrawWagerMetPopupBloc
    extends
        Bloc<
          WalletWithdrawWagerMetPopupEvent,
          WalletWithdrawWagerMetPopupState
        > {
  WalletWithdrawWagerMetPopupBloc(WalletWithdrawWagerMetPopupState initialState)
    : super(initialState) {
    on<WalletWithdrawWagerMetPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletWithdrawWagerMetPopupInitialEvent event,
    Emitter<WalletWithdrawWagerMetPopupState> emit,
  ) async {}
}
