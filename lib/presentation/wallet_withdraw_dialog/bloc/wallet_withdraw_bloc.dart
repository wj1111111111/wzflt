import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_withdraw_model.dart';
part 'wallet_withdraw_event.dart';
part 'wallet_withdraw_state.dart';

/// A bloc that manages the state of a WalletWithdraw according to the event that is dispatched to it.
class WalletWithdrawBloc
    extends Bloc<WalletWithdrawEvent, WalletWithdrawState> {
  WalletWithdrawBloc(WalletWithdrawState initialState) : super(initialState) {
    on<WalletWithdrawInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletWithdrawInitialEvent event,
    Emitter<WalletWithdrawState> emit,
  ) async {}
}
