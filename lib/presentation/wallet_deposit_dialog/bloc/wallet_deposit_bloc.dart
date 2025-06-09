import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_deposit_model.dart';
part 'wallet_deposit_event.dart';
part 'wallet_deposit_state.dart';

/// A bloc that manages the state of a WalletDeposit according to the event that is dispatched to it.
class WalletDepositBloc extends Bloc<WalletDepositEvent, WalletDepositState> {
  WalletDepositBloc(WalletDepositState initialState) : super(initialState) {
    on<WalletDepositInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletDepositInitialEvent event,
    Emitter<WalletDepositState> emit,
  ) async {}
}
