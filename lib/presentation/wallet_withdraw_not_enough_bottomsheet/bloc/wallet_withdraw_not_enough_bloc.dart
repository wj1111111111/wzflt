import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_withdraw_not_enough_model.dart';
part 'wallet_withdraw_not_enough_event.dart';
part 'wallet_withdraw_not_enough_state.dart';

/// A bloc that manages the state of a WalletWithdrawNotEnough according to the event that is dispatched to it.
class WalletWithdrawNotEnoughBloc
    extends Bloc<WalletWithdrawNotEnoughEvent, WalletWithdrawNotEnoughState> {
  WalletWithdrawNotEnoughBloc(WalletWithdrawNotEnoughState initialState)
    : super(initialState) {
    on<WalletWithdrawNotEnoughInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletWithdrawNotEnoughInitialEvent event,
    Emitter<WalletWithdrawNotEnoughState> emit,
  ) async {}
}
